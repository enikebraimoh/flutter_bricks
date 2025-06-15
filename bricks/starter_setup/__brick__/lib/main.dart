import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:{{name.snakeCase()}}/shared/models/auth_user.dart';
import 'package:{{name.snakeCase()}}/shared/router/router.dart';
import 'config/app_configs.dart';
import 'config/app_startup.dart';
import 'generated/l10n.dart';
import 'theme/light.dart';

void handleError(FlutterErrorDetails errorDetails) async {
  Sentry.captureException(
    errorDetails.exception,
    stackTrace: errorDetails.stack,
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppStartUp().setUp();
  if (kReleaseMode) {
    // Only initialize Sentry in release mode
    await SentryFlutter.init((options) {
      options.dsn = AppConstants.sentryDSN;
      options.tracesSampleRate = 0.1;
    }, appRunner: () => initializeApp());
  } else {
    // In debug mode, just run the app directly
    initializeApp();
  }
}

void initializeApp() async {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  if (kReleaseMode) {
    FlutterError.onError = handleError;
    PlatformDispatcher.instance.onError = (exception, stackTrace) {
      Sentry.captureException(exception, stackTrace: stackTrace);
      return true;
    };

    if (getIt.isRegistered<UserModel>()) {
      var user = getIt<UserModel>();
      debugPrint("Setting user on Sentry");
      Sentry.configureScope((scope) {
        scope.setUser(SentryUser(name: user.firstName, email: user.email));
      });
    }
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild?.unfocus();
        }
      },
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        title: '{{name.pascalCase()}}',
        themeMode: ThemeMode.light,
        theme: AppTheme.lightTheme,
      ),
    );
  }
}
