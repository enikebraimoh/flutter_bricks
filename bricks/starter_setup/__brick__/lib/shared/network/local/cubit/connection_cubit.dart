// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/foundation.dart';
// import 'dart:async';
// import '../../../../config/app_configs.dart';
// import '../../../../config/app_startup.dart';
// import '../../../../models/auth_user.dart';
// import '../../../utils/storage.dart';
// import '../offline_server.dart';
// import 'connection_state.dart';

// class ConnectionCubit extends Cubit<ConnectionState> {
//   final NetworkService networkService;
//   final _sharedDataStreamController =
//       StreamController<Map<String, dynamic>>.broadcast();

//   // Public stream that components can listen to
//   Stream<Map<String, dynamic>> get onSharedData =>
//       _sharedDataStreamController.stream;

//   ConnectionCubit({required this.networkService}) : super(ConnectionInitial()) {
//     _setupMessageListener();
//   }

//   void _setupMessageListener() {
//     networkService.onMessage.listen((data) {
//       if (data['type'] == 'shared_data') {
//         final sharedData = data['data'] as Map<String, dynamic>;
//         _sharedDataStreamController.add(sharedData);
//         debugPrint('💾 Received shared data: ${sharedData.keys.join(', ')}');
//       }
//     });
//   }

//   Future<void> shareEventData(Map<String, dynamic> eventData) async {
//     try {
//       emit(SharingDataLoading());
//       await networkService.shareData(eventData);
//       emit(SharingDataSuccess());
//     } catch (e) {
//       debugPrint('❌ Error sharing event data: $e');
//       emit(SharingDataError(message: e.toString()));
//     }
//   }

//   void initializeHost(String deviceName) async {
//     emit(HostLoading());
//     try {
//       await networkService.initializeHost(deviceName);
//       emit(HostSuccess());
//     } catch (e) {
//       emit(HostError(message: e.toString()));
//     }
//   }

//   void verifyPairingCode(String deviceId, String code) async {
//     emit(PairingLoading());
//     try {
//       final isPaired = await networkService.verifyPairingCode(deviceId, code);

//       if (isPaired) {
//         // Get user from network service
//         final user = networkService.lastVerifiedUser;
//         if (user == null) {
//           throw Exception('No user data received from host');
//         }

//         // Validate user
//         if (user.email.isEmpty) {
//           throw Exception('Invalid user data received');
//         }

//         // Save to local storage
//         await LocalStorageUtils.saveObject<UserModel>(
//           AppConstants.userObject,
//           user,
//         );

//         // Update GetIt
//         if (getIt.isRegistered<UserModel>()) {
//           getIt.unregister<UserModel>();
//         }
//         getIt.registerSingleton<UserModel>(user);

//         debugPrint('✅ User registered: ${user.email}');
//         emit(PairingSuccess());
//       } else {
//         emit(PairingError(message: 'Invalid pairing code'));
//       }
//     } catch (e) {
//       emit(PairingError(message: 'Pairing failed: ${e.toString()}'));
//     }
//   }

//   String? getSecurityCode() {
//     return networkService.securityCode;
//   }

//   void startDiscovery() async {
//     emit(DiscoveryLoading());
//     try {
//       await networkService.startDiscovery();
//       final devices = networkService.connectedDevices;
//       emit(DiscoverySuccess(devices: devices));
//     } catch (e) {
//       emit(DiscoveryError(message: e.toString()));
//     }
//   }

//   void stopListening() {
//     networkService.stopListening();
//   }

//   void disconnect() {
//     networkService.disconnect();
//     // networkService.stopListening();
//     emit(ConnectionInitial());
//   }

//   @override
//   Future<void> close() {
//     _sharedDataStreamController.close();
//     return super.close();
//   }
// }

// // Add this to handle JSON validation errors
// class CheckedFromJsonException implements Exception {
//   final String message;
//   CheckedFromJsonException(this.message);
//   @override
//   String toString() => message;
// }
