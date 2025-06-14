// import 'package:get_it/get_it.dart';
// import '../../../config/app_startup.dart';
// import '../../../screens/settings/offline/cubit/offline_mode_cubit.dart';
// import 'cubit/connection_cubit.dart';
// import 'local_database_service.dart';
// import 'offline_server.dart';

// void setupLocalNetworkServices(GetIt ioc) {
//   // First register NetworkService
//   final networkService = NetworkService();
//   ioc.registerSingleton<NetworkService>(networkService);

//   // Then register ConnectionCubit with the NetworkService
//   ioc.registerSingleton<ConnectionCubit>(
//       ConnectionCubit(networkService: networkService));
// }

// void setupOfflineModeServices(GetIt ioc) {
//   ioc.registerSingleton<OfflineModeCubit>(OfflineModeCubit());
// }
