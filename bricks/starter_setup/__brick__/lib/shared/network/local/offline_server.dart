// import 'dart:async';
// import 'dart:io';
// import 'dart:convert';
// import 'dart:math';
// import 'package:flutter/foundation.dart';
// import 'package:network_info_plus/network_info_plus.dart';
// import 'package:get_it/get_it.dart';
// import '../../../models/auth_user.dart';
// import '../../models/device_info.dart';

// class NetworkService {
//   static const int PORT = 43215;
//   final NetworkInfo _networkInfo = NetworkInfo();
//   RawDatagramSocket? _socket;
//   bool _isHost = false;
//   String? _deviceIp;
//   final List<DeviceInfo> _connectedDevices = [];
//   String? _securityCode;
//   final Map<String, bool> _pairedDevices = {};

//   StreamSubscription? _mainListener;
//   final _messageController = StreamController<Map<String, dynamic>>.broadcast();
//   final _deviceDiscoveredController = StreamController<DeviceInfo>.broadcast();
//   Stream<DeviceInfo> get onDeviceDiscovered =>
//       _deviceDiscoveredController.stream;
//   Stream<Map<String, dynamic>> get onMessage => _messageController.stream;

//   List<DeviceInfo> get connectedDevices => List.unmodifiable(_connectedDevices);
//   bool get isHost => _isHost;
//   String? get deviceIp => _deviceIp;
//   String? get securityCode => _securityCode;

//   UserModel? _lastVerifiedUser;
//   UserModel? get lastVerifiedUser => _lastVerifiedUser;

//   String? _deviceName;

//   Future<void> initializeHost(String deviceName) async {
//     try {
//       _deviceIp = await _networkInfo.getWifiIP();
//       debugPrint('📱 Host IP: $_deviceIp');

//       await _initializeSocket();
//       _isHost = true;

//       _deviceName = deviceName;

//       _securityCode = (100000 + Random().nextInt(900000)).toString();
//       debugPrint('🔐 Generated Security Code: $_securityCode');

//       // Keep periodic broadcast so that devices unable to broadcast (e.g. the
//       // AP acting as client) can still discover hosts that are regular
//       // stations. The unicast‑reply path remains for the original hotspot
//       // scenario.
//       _startHostBroadcast(deviceName);

//       debugPrint('🏠 Host initialized successfully');
//     } catch (e) {
//       debugPrint('❌ Host initialization failed: $e');
//       throw Exception('Failed to initialize host: $e');
//     }
//   }

//   Future<void> _initializeSocket() async {
//     try {
//       final wifiIP = await _networkInfo.getWifiIP();
//       if (wifiIP == null) {
//         throw Exception('Could not get WiFi IP address');
//       }

//       debugPrint('📡 Network IP: $wifiIP');

//       // Close existing socket if any
//       _socket?.close();

//       // Add retry logic
//       int retryCount = 0;
//       const maxRetries = 3;

//       while (retryCount < maxRetries) {
//         try {
//           _socket = await RawDatagramSocket.bind(
//             InternetAddress.anyIPv4,
//             PORT,
//             reuseAddress: true,
//             reusePort: true,
//           );
//           _socket?.broadcastEnabled = true;
//           break;
//         } catch (e) {
//           retryCount++;
//           debugPrint('⚠️ Socket bind attempt $retryCount failed: $e');
//           if (retryCount == maxRetries) {
//             throw e;
//           }
//           await Future.delayed(Duration(seconds: 1));
//         }
//       }

//       // Initialize the main listener
//       _startListening();

//       debugPrint('🔌 Socket initialized on port $PORT');
//     } catch (e) {
//       debugPrint('❌ Socket initialization error: $e');
//       throw Exception('Failed to initialize socket: $e');
//     }
//   }

//   // Helper function to calculate the broadcast address
//   Future<InternetAddress?> _calculateBroadcastAddress() async {
//     final ip = _deviceIp;
//     if (ip == null) return null;

//     try {
//       final subnet = await _networkInfo.getWifiSubmask();
//       if (subnet == null) return null;

//       final ipAddressBytes = InternetAddress(ip).rawAddress;
//       final subnetMaskBytes = InternetAddress(subnet).rawAddress;

//       if (ipAddressBytes.length != subnetMaskBytes.length) {
//         // Ensure IP and subnet mask are of the same family (IPv4/IPv6)
//         return null;
//       }

//       final broadcastAddressBytes = List<int>.filled(ipAddressBytes.length, 0);
//       for (int i = 0; i < ipAddressBytes.length; i++) {
//         broadcastAddressBytes[i] =
//             ipAddressBytes[i] | (~subnetMaskBytes[i] & 0xFF);
//       }

//       return InternetAddress(
//           broadcastAddressBytes.map((byte) => byte & 0xFF).join('.'));
//     } catch (e) {
//       debugPrint('❌ Error calculating broadcast address: $e');
//       return null; // Fallback or indicate error
//     }
//   }

//   void _startHostBroadcast(String deviceName) {
//     Timer.periodic(const Duration(seconds: 1), (timer) async {
//       if (!_isHost) {
//         timer.cancel();
//         return;
//       }

//       // Add null checks and network validation
//       if (_socket == null || _deviceIp == null) {
//         debugPrint('⚠️ Socket or device IP not initialized');
//         return;
//       }

//       // Calculate broadcast address
//       final broadcastAddress = await _calculateBroadcastAddress();
//       if (broadcastAddress == null) {
//         debugPrint(
//             '⚠️ Could not determine broadcast address, falling back to 255.255.255.255');
//         // Optionally, use a fallback like InternetAddress('255.255.255.255')
//         // Or simply return if broadcast is critical
//         return;
//       }

//       try {
//         final hostInfo = DeviceInfo(
//           id: _deviceIp!,
//           name: deviceName,
//           alias: deviceName,
//           isHost: true,
//         );

//         final message = {
//           'type': 'discovery',
//           'device': hostInfo.toJson(),
//         };

//         // Use a try-catch block for the send operation
//         try {
//           _socket?.send(
//             jsonEncode(message).codeUnits,
//             broadcastAddress,
//             PORT,
//           );
//         } catch (e) {
//           debugPrint('⚠️ Broadcast send failed: $e');
//           // Don't throw here, just log the error to prevent app crashes
//         }
//       } catch (e) {
//         debugPrint('❌ Error in broadcast: $e');
//       }
//     });
//   }

//   void _startListening() {
//     _mainListener?.cancel();
//     _mainListener = _socket?.listen((RawSocketEvent event) {
//       if (event == RawSocketEvent.read) {
//         final datagram = _socket?.receive();
//         if (datagram != null) {
//           final senderAddress =
//               datagram.address.address; // String representation
//           final message = String.fromCharCodes(datagram.data);
//           try {
//             final data = jsonDecode(message);

//             // ----------------------------------
//             // Message‑type handling
//             // ----------------------------------

//             // Host replies with discovery_response → client processes
//             if (data['type'] == 'discovery_response') {
//               try {
//                 final deviceInfo = DeviceInfo.fromJson(data['device']);

//                 // Ensure we only track hosts and avoid duplicates
//                 if (deviceInfo.isHost &&
//                     !_connectedDevices.any((d) => d.id == deviceInfo.id)) {
//                   _connectedDevices.add(deviceInfo);
//                   _deviceDiscoveredController.add(deviceInfo);
//                   debugPrint(
//                       '✅ Found host (response): ${deviceInfo.name} (${deviceInfo.id})');
//                 }
//               } catch (e) {
//                 debugPrint('❌ Error parsing discovery response: $e');
//               }
//             }

//             // Back‑compat: still handle legacy discovery broadcast
//             if (data['type'] == 'discovery') {
//               try {
//                 final deviceInfo = DeviceInfo.fromJson(data['device']);

//                 if (deviceInfo.isHost &&
//                     !_connectedDevices.any((d) => d.id == deviceInfo.id)) {
//                   _connectedDevices.add(deviceInfo);
//                   _deviceDiscoveredController.add(deviceInfo);
//                   debugPrint(
//                       '✅ Found host (broadcast): ${deviceInfo.name} (${deviceInfo.id})');
//                 }
//               } catch (e) {
//                 debugPrint('❌ Error parsing device info: $e');
//               }
//             }

//             // Host receives discovery_request → reply unicast
//             if (_isHost && data['type'] == 'discovery_request') {
//               // Prefer client‑provided ID, fall back to sender's address.
//               final String clientId =
//                   (data['clientId'] as String?) ?? senderAddress;

//               if (_deviceIp != null && clientId.isNotEmpty) {
//                 final hostInfo = DeviceInfo(
//                   id: _deviceIp!,
//                   name: _deviceName ?? 'Host',
//                   alias: _deviceName ?? 'Host',
//                   isHost: true,
//                 );

//                 final response = {
//                   'type': 'discovery_response',
//                   'device': hostInfo.toJson(),
//                 };

//                 try {
//                   _socket?.send(
//                     jsonEncode(response).codeUnits,
//                     InternetAddress(clientId),
//                     PORT,
//                   );
//                   // Send unicast back to requester
//                   _socket?.send(
//                     jsonEncode(response).codeUnits,
//                     InternetAddress(clientId),
//                     PORT,
//                   );

//                   // Also broadcast for environments where multiple logical
//                   // devices share the same host IP (e.g. emulators on macOS).
//                   _socket?.send(
//                     jsonEncode(response).codeUnits,
//                     InternetAddress('255.255.255.255'),
//                     PORT,
//                   );
//                   debugPrint('📤 Sent discovery response to $clientId');
//                 } catch (e) {
//                   debugPrint('❌ Failed to send discovery response: $e');
//                 }
//               }
//             }

//             // For verification handling
//             if (_isHost && data['type'] == 'verify_code') {
//               final clientCode = data['code'];
//               final String clientId =
//                   (data['clientId'] as String?) ?? senderAddress;
//               final isVerified = clientCode == _securityCode;

//               // Get host user from GetIt
//               final user = GetIt.I<UserModel>();

//               final response = {
//                 'type': 'verify_code_response',
//                 'verified': isVerified,
//                 'user': isVerified ? user.toJson() : null,
//               };

//               _socket?.send(
//                 jsonEncode(response).codeUnits,
//                 InternetAddress(clientId),
//                 PORT,
//               );

//               if (isVerified) {
//                 _pairedDevices[clientId] = true;
//                 debugPrint('✅ Client paired successfully: $clientId');
//               }
//             }

//             // Handle user data reception on client
//             if (!_isHost && data['type'] == 'verify_code_response') {
//               if (data['verified'] == true && data['user'] != null) {
//                 _lastVerifiedUser = UserModel.fromJson(data['user']);
//                 debugPrint('👤 Received user: ${_lastVerifiedUser?.email}');
//               }
//             }

//             // Add all messages to controller for client verification responses
//             _messageController.add(data);
//           } catch (e) {
//             debugPrint('❌ Error parsing message: $e');
//           }
//         }
//       }
//     });
//   }

//   void stopListening() {
//     _socket?.close();
//     _socket = null;
//     debugPrint('🔇 Stopped listening on network');
//   }

//   void disconnect() {
//     stopListening();
//     _isHost = false;
//     _deviceIp = null;
//     _connectedDevices.clear();
//     debugPrint('🔌 Disconnected from network');
//   }

//   Future<void> startDiscovery() async {
//     try {
//       _deviceIp = await _networkInfo.getWifiIP();
//       debugPrint('📱 Client IP: $_deviceIp');

//       await _initializeSocket();

//       debugPrint('🔍 Started discovering hosts');

//       // Send 3 discovery requests one second apart for reliability
//       // for (int i = 0; i < 3; i++) {
//       //   await _broadcastDiscoveryRequest();
//       //   await Future.delayed(const Duration(seconds: 1));
//       // }

//       await _broadcastDiscoveryRequest();
//     } catch (e) {
//       debugPrint('❌ Discovery failed: $e');
//       throw Exception('Failed to start discovery: $e');
//     }
//   }

//   Future<void> _broadcastDiscoveryRequest() async {
//     // Clients call this to discover hosts. It sends a single broadcast packet
//     // asking any host on the subnet to identify itself.
//     if (_socket == null) {
//       debugPrint('⚠️ Cannot broadcast discovery request - socket not ready');
//       return;
//     }

//     final broadcastAddress = await _calculateBroadcastAddress();
//     if (broadcastAddress == null) {
//       debugPrint('⚠️ Could not determine broadcast address, discovery abort');
//       return;
//     }

//     final request = {
//       'type': 'discovery_request',
//       'clientId': _deviceIp,
//     };

//     try {
//       _socket?.send(
//         jsonEncode(request).codeUnits,
//         broadcastAddress,
//         PORT,
//       );
//       debugPrint('📡 Sent discovery request');

//       // When this device is also the host (AP), the broadcast packet might not
//       // be looped back to the local socket. Send the same discovery request
//       // unicast to our own IP so that the host‑side listener can process it
//       // and generate a discovery_response.
//       if (_isHost && _deviceIp != null) {
//         _socket?.send(
//           jsonEncode(request).codeUnits,
//           InternetAddress(_deviceIp!),
//           PORT,
//         );
//         debugPrint('📡 Sent self‑targeted discovery request');
//       }
//     } catch (e) {
//       debugPrint('❌ Failed to send discovery request: $e');
//     }
//   }

//   void dispose() {
//     _mainListener?.cancel();
//     _messageController.close();
//     _deviceDiscoveredController.close();
//     _socket?.close();
//   }

//   Future<bool> verifyPairingCode(String hostId, String code) async {
//     debugPrint('🔐 Client: Sending code verification request to host...');
//     debugPrint('📱 Host ID: $hostId');
//     debugPrint('🔑 Code to verify: $code');

//     try {
//       final completer = Completer<bool>();
//       StreamSubscription? verificationSub;

//       verificationSub = _messageController.stream.listen((data) {
//         if (data['type'] == 'verify_code_response') {
//           verificationSub?.cancel();
//           completer.complete(data['verified'] as bool);
//         }
//       });

//       // Send verification request to host
//       final verificationRequest = {
//         'type': 'verify_code',
//         'code': code,
//         'clientId': _deviceIp,
//       };

//       _socket?.send(
//         jsonEncode(verificationRequest).codeUnits,
//         InternetAddress(hostId),
//         PORT,
//       );

//       // Timeout after 5 seconds
//       Future.delayed(const Duration(seconds: 5), () {
//         if (!completer.isCompleted) {
//           verificationSub?.cancel();
//           completer.complete(false);
//         }
//       });

//       return await completer.future;
//     } catch (e) {
//       debugPrint('❌ Verification request failed: $e');
//       return false;
//     }
//   }

//   bool isDevicePaired(String deviceId) {
//     return _pairedDevices[deviceId] ?? false;
//   }

//   void sendData(String message) {
//     if (!_isHost && !_pairedDevices.containsKey(_deviceIp)) {
//       debugPrint('❌ Cannot send data - device not paired');
//       return;
//     }

//     final data = {
//       'type': 'message',
//       'content': message,
//       'sender': _deviceIp,
//     };

//     final encodedMessage = jsonEncode(data);

//     for (final deviceId in _pairedDevices.keys) {
//       _socket?.send(
//         encodedMessage.codeUnits,
//         InternetAddress(deviceId),
//         PORT,
//       );
//       debugPrint('🔄 Shared User data to $deviceId');
//     }
//   }

//   Future<void> shareData(Map<String, dynamic> data) async {
//     if (_socket == null) {
//       debugPrint('❌ Cannot share data - socket not initialized');
//       return;
//     }

//     final message = {
//       'type': 'shared_data',
//       'data': data,
//       'sender': _deviceIp,
//     };

//     final encodedMessage = jsonEncode(message);

//     // If this is a host, send to all paired devices
//     if (_isHost) {
//       for (final deviceId in _pairedDevices.keys) {
//         _socket?.send(
//           encodedMessage.codeUnits,
//           InternetAddress(deviceId),
//           PORT,
//         );
//         debugPrint('🔄 Host shared data to client $deviceId');
//       }
//     }
//     // If this is a client, send to the connected host
//     else if (_connectedDevices.isNotEmpty) {
//       for (final device in _connectedDevices) {
//         if (device.isHost) {
//           _socket?.send(
//             encodedMessage.codeUnits,
//             InternetAddress(device.id),
//             PORT,
//           );
//           debugPrint('🔄 Client shared data to host ${device.id}');
//         }
//       }
//     } else {
//       debugPrint('❌ No devices to share data with');
//     }
//   }
// }
