import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/config/app_configs.dart';
import 'package:{{name.snakeCase()}}/firebase_options.dart';
import 'package:{{name.snakeCase()}}/shared/models/auth_user.dart';
import 'package:{{name.snakeCase()}}/shared/services/firebase_notification_manager.dart';
import 'package:{{name.snakeCase()}}/shared/utils/storage.dart';

// This is our global ServiceLocator
final getIt = GetIt.instance;

class AppStartUp {
  Future<void> setUp() async {
    await registerServices(getIt);
    getIt.allowReassignment = true;
    await loadStartUpConfig();
    await initializeFirebase();
    await firebasePushNotification();
  }

  Future<void> registerServices(GetIt ioc) async {
    // setupAuthDependencies(getIt);
    // setupFieldDependencies(getIt);
    // setupTaskDependencies(getIt);
    // setupSettingsDependencies(getIt);
    // setupNotificationDependencies(getIt);
    await loadEnvironmentVariables();
  }

  Future<void> loadEnvironmentVariables() async {
    await dotenv.load(fileName: ".env");
    // MapboxOptions.setAccessToken(dotenv.env['MAPBOX_ACCESS_TOKEN']!);
  }

  Future<void> loadStartUpConfig() async {
    // clear cached token if the app is a newly installed.
    var isFirstTime = await LocalStorageUtils.read(
      AppConstants.isUserFirstTime,
    );
    if (isFirstTime != "true") {
      // await const FlutterSecureStorage().deleteAll();
    }

    // Get User Object data from local storage
    var userObject = await LocalStorageUtils.readObject<UserModel>(
      AppConstants.userObject,
    );
    if (userObject != null) {
      UserModel user = UserModel.fromJson(userObject);

      // Unregister existing singleton if it exists
      if (getIt.isRegistered<UserModel>()) {
        getIt.unregister<UserModel>();
      }

      // Register new user singleton
      getIt.registerSingleton<UserModel>(user);
    }
  }

  Future<void> initializeFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  Future<void> firebasePushNotification() async {
    FirebaseNotificationManager notificationManager =
        FirebaseNotificationManager();
    await notificationManager.registerNotification();
    try {
      await notificationManager.deviceToken;
    } catch (ex) {
      debugPrint(ex.toString());
    }
  }
}
