// ignore_for_file: constant_identifier_names
import 'package:auto_route/auto_route.dart';
// import 'router.gr.dart';

const EventsTab = EmptyShellRoute('EventsTab');
const GuestListTab = EmptyShellRoute('GuestListTab');
const SettingsTab = EmptyShellRoute('SettingsTab');
const OfflineHolder = EmptyShellRoute('OfflineHolder');
const GroupScan = EmptyShellRoute('GroupScan');

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    // AutoRoute(page: SplashRoute.page, initial: true),
    // AutoRoute(page: OnboardingRoute.page),
    // AutoRoute(page: StartRoute.page),
    // AutoRoute(page: LoginRoute.page),
    // AutoRoute(page: ForgotPasswordRoute.page),
    // AutoRoute(page: OnlineGroupScanAuthRoute.page),
    // AutoRoute(
    //   page: HomeTabs.page,
    //   children: [
    //     AutoRoute(page: EventsTab.page, children: [
    //       AutoRoute(page: EventsHomeRoute.page, initial: true),
    //       AutoRoute(page: PastAndUpcomingEventsRoute.page),
    //       AutoRoute(page: SingleEventRoute.page),
    //       AutoRoute(page: SingleGuestListRoute.page),
    //     ]),
    //     AutoRoute(page: GuestListTab.page, children: [
    //       AutoRoute(page: GuestListHomeRoute.page, initial: true),
    //       AutoRoute(page: PastAndUpcomingEventsRoute.page),
    //       AutoRoute(page: SingleEventRoute.page),
    //       AutoRoute(page: SingleGuestListRoute.page),
    //     ]),
    //     AutoRoute(page: SettingsTab.page, children: [
    //       AutoRoute(page: SettingsHomeRoute.page, initial: true),
    //     ]),
    //   ],
    // ),
    // CustomRoute(page: OnlineGuestListRoute.page),
    // CustomRoute(
    //   page: ScanRoute.page,
    //   transitionsBuilder: TransitionsBuilders.slideBottom,
    //   durationInMilliseconds: 150,
    //   fullscreenDialog: true,
    // ),
    // CustomRoute(
    //   page: OfflineHolder.page,
    //   transitionsBuilder: TransitionsBuilders.slideBottom,
    //   durationInMilliseconds: 150,
    //   fullscreenDialog: true,
    //   children: [
    //     AutoRoute(page: OfflineModalRoute.page, initial: true),
    //     AutoRoute(page: OfflineQrRoute.page),
    //     // AutoRoute(page: OfflineDownloadRoute.page),
    //   ],
    // ),
    // CustomRoute(
    //   page: GroupScan.page,
    //   transitionsBuilder: TransitionsBuilders.slideBottom,
    //   durationInMilliseconds: 150,
    //   fullscreenDialog: true,
    //   children: [
    //     AutoRoute(page: GroupScanHowRoute.page, initial: true),
    //     AutoRoute(page: GroupScanHostRoute.page),
    //     AutoRoute(page: GroupScanAuthRoute.page),
    //     AutoRoute(page: GroupScanRoute.page),
    //   ],
    // ),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // optionally add root guards here
  ];
}
