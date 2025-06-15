// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i24;
import 'package:flutter/material.dart' as _i26;
import 'package:{{name.snakeCase()}}/models/user_event.dart' as _i27;
import 'package:{{name.snakeCase()}}/screens/auth/forgot_password.dart' as _i2;
import 'package:{{name.snakeCase()}}/screens/auth/login_screen.dart' as _i9;
import 'package:{{name.snakeCase()}}/screens/auth/onboarding/onboarding_screen.dart'
    as _i12;
import 'package:{{name.snakeCase()}}/screens/auth/splash_screen.dart' as _i22;
import 'package:{{name.snakeCase()}}/screens/auth/start_screen.dart' as _i23;
import 'package:{{name.snakeCase()}}/screens/events/events_home_screen.dart'
    as _i1;
import 'package:{{name.snakeCase()}}/screens/events/past_and_upcoming_events_screen.dart'
    as _i17;
import 'package:{{name.snakeCase()}}/screens/events/single_event_screen.dart'
    as _i20;
import 'package:{{name.snakeCase()}}/screens/group_scan/group_scan_auth_screen.dart'
    as _i3;
import 'package:{{name.snakeCase()}}/screens/group_scan/group_scan_host_screen.dart'
    as _i4;
import 'package:{{name.snakeCase()}}/screens/group_scan/group_scan_how_screen.dart'
    as _i5;
import 'package:{{name.snakeCase()}}/screens/group_scan/group_scan_screen.dart'
    as _i6;
import 'package:{{name.snakeCase()}}/screens/group_scan/online_group_scan_auth_screen.dart'
    as _i13;
import 'package:{{name.snakeCase()}}/screens/group_scan/online_guest_list_screen.dart'
    as _i14;
import 'package:{{name.snakeCase()}}/screens/group_scan/online_scan_how_screen.dart'
    as _i16;
import 'package:{{name.snakeCase()}}/screens/guest_list/guest_list_home_screen.dart'
    as _i7;
import 'package:{{name.snakeCase()}}/screens/guest_list/single_guest_list_screen.dart'
    as _i21;
import 'package:{{name.snakeCase()}}/screens/layouts/home_tab.dart' as _i8;
import 'package:{{name.snakeCase()}}/screens/scan/scan_screen.dart' as _i18;
import 'package:{{name.snakeCase()}}/screens/settings/offline/offline_modal_screen.dart'
    as _i10;
import 'package:{{name.snakeCase()}}/screens/settings/offline/offline_qr_screen.dart'
    as _i11;
import 'package:{{name.snakeCase()}}/screens/settings/offline/online_qr_screen.dart'
    as _i15;
import 'package:{{name.snakeCase()}}/screens/settings/settings_home_screen.dart'
    as _i19;
import 'package:{{name.snakeCase()}}/shared/models/device_info.dart' as _i25;

/// generated route for
/// [_i1.EventsHomeScreen]
class EventsHomeRoute extends _i24.PageRouteInfo<void> {
  const EventsHomeRoute({List<_i24.PageRouteInfo>? children})
    : super(EventsHomeRoute.name, initialChildren: children);

  static const String name = 'EventsHomeRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i1.EventsHomeScreen();
    },
  );
}

/// generated route for
/// [_i2.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i24.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i24.PageRouteInfo>? children})
    : super(ForgotPasswordRoute.name, initialChildren: children);

  static const String name = 'ForgotPasswordRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i2.ForgotPasswordScreen();
    },
  );
}

/// generated route for
/// [_i3.GroupScanAuthScreen]
class GroupScanAuthRoute extends _i24.PageRouteInfo<GroupScanAuthRouteArgs> {
  GroupScanAuthRoute({
    required _i25.DeviceInfo hostDevice,
    _i26.Key? key,
    List<_i24.PageRouteInfo>? children,
  }) : super(
         GroupScanAuthRoute.name,
         args: GroupScanAuthRouteArgs(hostDevice: hostDevice, key: key),
         initialChildren: children,
       );

  static const String name = 'GroupScanAuthRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GroupScanAuthRouteArgs>();
      return _i3.GroupScanAuthScreen(
        hostDevice: args.hostDevice,
        key: args.key,
      );
    },
  );
}

class GroupScanAuthRouteArgs {
  const GroupScanAuthRouteArgs({required this.hostDevice, this.key});

  final _i25.DeviceInfo hostDevice;

  final _i26.Key? key;

  @override
  String toString() {
    return 'GroupScanAuthRouteArgs{hostDevice: $hostDevice, key: $key}';
  }
}

/// generated route for
/// [_i4.GroupScanHostScreen]
class GroupScanHostRoute extends _i24.PageRouteInfo<void> {
  const GroupScanHostRoute({List<_i24.PageRouteInfo>? children})
    : super(GroupScanHostRoute.name, initialChildren: children);

  static const String name = 'GroupScanHostRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i4.GroupScanHostScreen();
    },
  );
}

/// generated route for
/// [_i5.GroupScanHowScreen]
class GroupScanHowRoute extends _i24.PageRouteInfo<void> {
  const GroupScanHowRoute({List<_i24.PageRouteInfo>? children})
    : super(GroupScanHowRoute.name, initialChildren: children);

  static const String name = 'GroupScanHowRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i5.GroupScanHowScreen();
    },
  );
}

/// generated route for
/// [_i6.GroupScanScreen]
class GroupScanRoute extends _i24.PageRouteInfo<GroupScanRouteArgs> {
  GroupScanRoute({
    _i26.Key? key,
    required String hostDeviceId,
    bool isClient = false,
    List<_i24.PageRouteInfo>? children,
  }) : super(
         GroupScanRoute.name,
         args: GroupScanRouteArgs(
           key: key,
           hostDeviceId: hostDeviceId,
           isClient: isClient,
         ),
         initialChildren: children,
       );

  static const String name = 'GroupScanRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GroupScanRouteArgs>();
      return _i6.GroupScanScreen(
        key: args.key,
        hostDeviceId: args.hostDeviceId,
        isClient: args.isClient,
      );
    },
  );
}

class GroupScanRouteArgs {
  const GroupScanRouteArgs({
    this.key,
    required this.hostDeviceId,
    this.isClient = false,
  });

  final _i26.Key? key;

  final String hostDeviceId;

  final bool isClient;

  @override
  String toString() {
    return 'GroupScanRouteArgs{key: $key, hostDeviceId: $hostDeviceId, isClient: $isClient}';
  }
}

/// generated route for
/// [_i7.GuestListHomeScreen]
class GuestListHomeRoute extends _i24.PageRouteInfo<void> {
  const GuestListHomeRoute({List<_i24.PageRouteInfo>? children})
    : super(GuestListHomeRoute.name, initialChildren: children);

  static const String name = 'GuestListHomeRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i7.GuestListHomeScreen();
    },
  );
}

/// generated route for
/// [_i8.HomeTabs]
class HomeTabs extends _i24.PageRouteInfo<void> {
  const HomeTabs({List<_i24.PageRouteInfo>? children})
    : super(HomeTabs.name, initialChildren: children);

  static const String name = 'HomeTabs';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i8.HomeTabs();
    },
  );
}

/// generated route for
/// [_i9.LoginScreen]
class LoginRoute extends _i24.PageRouteInfo<void> {
  const LoginRoute({List<_i24.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i9.LoginScreen();
    },
  );
}

/// generated route for
/// [_i10.OfflineModalScreen]
class OfflineModalRoute extends _i24.PageRouteInfo<void> {
  const OfflineModalRoute({List<_i24.PageRouteInfo>? children})
    : super(OfflineModalRoute.name, initialChildren: children);

  static const String name = 'OfflineModalRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i10.OfflineModalScreen();
    },
  );
}

/// generated route for
/// [_i11.OfflineQrScreen]
class OfflineQrRoute extends _i24.PageRouteInfo<void> {
  const OfflineQrRoute({List<_i24.PageRouteInfo>? children})
    : super(OfflineQrRoute.name, initialChildren: children);

  static const String name = 'OfflineQrRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i11.OfflineQrScreen();
    },
  );
}

/// generated route for
/// [_i12.OnboardingScreen]
class OnboardingRoute extends _i24.PageRouteInfo<void> {
  const OnboardingRoute({List<_i24.PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i12.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i13.OnlineGroupScanAuthScreen]
class OnlineGroupScanAuthRoute
    extends _i24.PageRouteInfo<OnlineGroupScanAuthRouteArgs> {
  OnlineGroupScanAuthRoute({
    _i26.Key? key,
    required String name,
    List<_i24.PageRouteInfo>? children,
  }) : super(
         OnlineGroupScanAuthRoute.name,
         args: OnlineGroupScanAuthRouteArgs(key: key, name: name),
         initialChildren: children,
       );

  static const String name = 'OnlineGroupScanAuthRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnlineGroupScanAuthRouteArgs>();
      return _i13.OnlineGroupScanAuthScreen(key: args.key, name: args.name);
    },
  );
}

class OnlineGroupScanAuthRouteArgs {
  const OnlineGroupScanAuthRouteArgs({this.key, required this.name});

  final _i26.Key? key;

  final String name;

  @override
  String toString() {
    return 'OnlineGroupScanAuthRouteArgs{key: $key, name: $name}';
  }
}

/// generated route for
/// [_i14.OnlineGuestListScreen]
class OnlineGuestListRoute
    extends _i24.PageRouteInfo<OnlineGuestListRouteArgs> {
  OnlineGuestListRoute({
    _i26.Key? key,
    required String productCode,
    List<_i24.PageRouteInfo>? children,
  }) : super(
         OnlineGuestListRoute.name,
         args: OnlineGuestListRouteArgs(key: key, productCode: productCode),
         initialChildren: children,
       );

  static const String name = 'OnlineGuestListRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnlineGuestListRouteArgs>();
      return _i14.OnlineGuestListScreen(
        key: args.key,
        productCode: args.productCode,
      );
    },
  );
}

class OnlineGuestListRouteArgs {
  const OnlineGuestListRouteArgs({this.key, required this.productCode});

  final _i26.Key? key;

  final String productCode;

  @override
  String toString() {
    return 'OnlineGuestListRouteArgs{key: $key, productCode: $productCode}';
  }
}

/// generated route for
/// [_i15.OnlineQrScreen]
class OnlineQrRoute extends _i24.PageRouteInfo<OnlineQrRouteArgs> {
  OnlineQrRoute({
    _i26.Key? key,
    required String sessionCode,
    List<_i24.PageRouteInfo>? children,
  }) : super(
         OnlineQrRoute.name,
         args: OnlineQrRouteArgs(key: key, sessionCode: sessionCode),
         initialChildren: children,
       );

  static const String name = 'OnlineQrRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnlineQrRouteArgs>();
      return _i15.OnlineQrScreen(key: args.key, sessionCode: args.sessionCode);
    },
  );
}

class OnlineQrRouteArgs {
  const OnlineQrRouteArgs({this.key, required this.sessionCode});

  final _i26.Key? key;

  final String sessionCode;

  @override
  String toString() {
    return 'OnlineQrRouteArgs{key: $key, sessionCode: $sessionCode}';
  }
}

/// generated route for
/// [_i16.OnlineScanHowScreen]
class OnlineScanHowRoute extends _i24.PageRouteInfo<void> {
  const OnlineScanHowRoute({List<_i24.PageRouteInfo>? children})
    : super(OnlineScanHowRoute.name, initialChildren: children);

  static const String name = 'OnlineScanHowRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i16.OnlineScanHowScreen();
    },
  );
}

/// generated route for
/// [_i17.PastAndUpcomingEventsScreen]
class PastAndUpcomingEventsRoute extends _i24.PageRouteInfo<void> {
  const PastAndUpcomingEventsRoute({List<_i24.PageRouteInfo>? children})
    : super(PastAndUpcomingEventsRoute.name, initialChildren: children);

  static const String name = 'PastAndUpcomingEventsRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i17.PastAndUpcomingEventsScreen();
    },
  );
}

/// generated route for
/// [_i18.ScanScreen]
class ScanRoute extends _i24.PageRouteInfo<ScanRouteArgs> {
  ScanRoute({
    _i26.Key? key,
    required String eventCode,
    List<_i24.PageRouteInfo>? children,
  }) : super(
         ScanRoute.name,
         args: ScanRouteArgs(key: key, eventCode: eventCode),
         initialChildren: children,
       );

  static const String name = 'ScanRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ScanRouteArgs>();
      return _i18.ScanScreen(key: args.key, eventCode: args.eventCode);
    },
  );
}

class ScanRouteArgs {
  const ScanRouteArgs({this.key, required this.eventCode});

  final _i26.Key? key;

  final String eventCode;

  @override
  String toString() {
    return 'ScanRouteArgs{key: $key, eventCode: $eventCode}';
  }
}

/// generated route for
/// [_i19.SettingsHomeScreen]
class SettingsHomeRoute extends _i24.PageRouteInfo<void> {
  const SettingsHomeRoute({List<_i24.PageRouteInfo>? children})
    : super(SettingsHomeRoute.name, initialChildren: children);

  static const String name = 'SettingsHomeRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i19.SettingsHomeScreen();
    },
  );
}

/// generated route for
/// [_i20.SingleEventScreen]
class SingleEventRoute extends _i24.PageRouteInfo<SingleEventRouteArgs> {
  SingleEventRoute({
    _i26.Key? key,
    required String eventCode,
    required _i27.UserEvent event,
    List<_i24.PageRouteInfo>? children,
  }) : super(
         SingleEventRoute.name,
         args: SingleEventRouteArgs(
           key: key,
           eventCode: eventCode,
           event: event,
         ),
         initialChildren: children,
       );

  static const String name = 'SingleEventRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SingleEventRouteArgs>();
      return _i20.SingleEventScreen(
        key: args.key,
        eventCode: args.eventCode,
        event: args.event,
      );
    },
  );
}

class SingleEventRouteArgs {
  const SingleEventRouteArgs({
    this.key,
    required this.eventCode,
    required this.event,
  });

  final _i26.Key? key;

  final String eventCode;

  final _i27.UserEvent event;

  @override
  String toString() {
    return 'SingleEventRouteArgs{key: $key, eventCode: $eventCode, event: $event}';
  }
}

/// generated route for
/// [_i21.SingleGuestListScreen]
class SingleGuestListRoute
    extends _i24.PageRouteInfo<SingleGuestListRouteArgs> {
  SingleGuestListRoute({
    _i26.Key? key,
    required String eventCode,
    List<_i24.PageRouteInfo>? children,
  }) : super(
         SingleGuestListRoute.name,
         args: SingleGuestListRouteArgs(key: key, eventCode: eventCode),
         initialChildren: children,
       );

  static const String name = 'SingleGuestListRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SingleGuestListRouteArgs>();
      return _i21.SingleGuestListScreen(
        key: args.key,
        eventCode: args.eventCode,
      );
    },
  );
}

class SingleGuestListRouteArgs {
  const SingleGuestListRouteArgs({this.key, required this.eventCode});

  final _i26.Key? key;

  final String eventCode;

  @override
  String toString() {
    return 'SingleGuestListRouteArgs{key: $key, eventCode: $eventCode}';
  }
}

/// generated route for
/// [_i22.SplashScreen]
class SplashRoute extends _i24.PageRouteInfo<void> {
  const SplashRoute({List<_i24.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i22.SplashScreen();
    },
  );
}

/// generated route for
/// [_i23.StartScreen]
class StartRoute extends _i24.PageRouteInfo<void> {
  const StartRoute({List<_i24.PageRouteInfo>? children})
    : super(StartRoute.name, initialChildren: children);

  static const String name = 'StartRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i23.StartScreen();
    },
  );
}
