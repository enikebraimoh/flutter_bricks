import 'package:auto_route/auto_route.dart';
import 'package:pollinlink_app/features/shared/settings/profile/add_company_code.dart';

import 'app_router.gr.dart';

// Define empty shell routes for tabs
// const DashboardTab = EmptyShellRoute('DashboardTab');
// const InfoFieldTab = EmptyShellRoute('InfoFieldTab');
// const CalendarTab = EmptyShellRoute('CalendarTab');
// const TasksTab = EmptyShellRoute('TasksTab');

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: OnboardingRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: SignupRoute.page),
    AutoRoute(page: ForgotPasswordRoute.page),
    AutoRoute(page: VerificationRoute.page),
    AutoRoute(page: PrivacyPolicyRoute.page),
    AutoRoute(page: TermsOfServiceRoute.page),
    AutoRoute(page: CompanyCodeInfoRoute.page),
    AutoRoute(page: ProfileRoute.page),
    AutoRoute(page: EditProfileRoute.page),
    AutoRoute(page: NotificationSettingsRoute.page),
    AutoRoute(page: ProfileDetailsRoute.page),
    AutoRoute(page: EmailVerificationRoute.page),
    AutoRoute(page: TaskDetailsRoute.page),
    AutoRoute(page: AddCompanyCodeRoute.page),
    AutoRoute(page: AllFieldsRoute.page),
    AutoRoute(page: ChangePasswordRoute.page),
    AutoRoute(page: NotificationsRoute.page),
    AutoRoute(page: CalendarUnavailabilityRoute.page),
    AutoRoute(page: SetTaskLimitRoute.page),
    AutoRoute(page: WeeklyAvailabilityRoute.page),
    AutoRoute(
      page: AgronomistTabsRoute.page,
      children: [
        AutoRoute(page: AgronomistDashboardRoute.page),
        AutoRoute(page: InfoFieldRoute.page),
        AutoRoute(page: ScheduleCalendarRoute.page),
        AutoRoute(page: TasksRoute.page),
      ],
    ),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // Add authentication guard
    // AutoRouteGuard(
    //   onNavigation: (navigationResolver, stackRouter) async {
    //     final authState = ref.read(authStateProvider);
    //     final onboardingState = ref.read(onboardingCompletedProvider);
    //     final currentUser = ref.read(currentUserProvider);

    //     // Splash screen has its own redirection logic
    //     if (stackRouter.current.name == 'SplashRoute') {
    //       return navigationResolver.next(true);
    //     }

    //     // Handle authentication state
    //     if (authState == AuthState.loading) {
    //       return navigationResolver.next(false);
    //     }

    //     final isAuthenticated = authState == AuthState.authenticated;
    //     final isOnboarding = stackRouter.current.name == 'OnboardingRoute';
    //     final isVerificationRoute = stackRouter.current.name == 'VerificationRoute';
    //     final isLoginRoute = stackRouter.current.name == 'LoginRoute';
    //     final isSignupRoute = stackRouter.current.name == 'SignupRoute';
    //     final isForgotPasswordRoute = stackRouter.current.name == 'ForgotPasswordRoute';
    //     final isAgronomistRoute = stackRouter.current.name.startsWith('Agronomist');
    //     final isAuthRoute = isLoginRoute || isSignupRoute || isForgotPasswordRoute || isOnboarding || isVerificationRoute;

    //     // Onboarding check
    //     if (onboardingState.valueOrNull == false && !isOnboarding && stackRouter.current.name != 'SplashRoute') {
    //       return navigationResolver.next(false);
    //     }

    //     // Auth routes redirect logic
    //     if (isAuthenticated && isAuthRoute) {
    //       final role = currentUser.valueOrNull?.role;
    //       if (role == AppConstants.pollinatorRole) {
    //         return navigationResolver.next(false);
    //       } else if (role == AppConstants.agronomistRole) {
    //         return navigationResolver.next(false);
    //       } else {
    //         return navigationResolver.next(false);
    //       }
    //     }

    //     // Protected routes redirect logic
    //     if (!isAuthenticated && !isAuthRoute) {
    //       return navigationResolver.next(false);
    //     }

    //     return navigationResolver.next(true);
    //   },
    // ),
  ];
}
