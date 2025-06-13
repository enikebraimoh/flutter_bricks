import 'package:flutter/foundation.dart';

/// Application configuration constants
class AppConfig {
  /// Base URL for API requests
  // static const String baseUrl = kReleaseMode ? liveBaseUrl : devBaseUrl;
  // static const String liveBaseUrl = "https://server.pollinlink.com/v1/";
  // static const String devBaseUrl = "http://18.225.37.39:3000/v1/";

  // /// Other configuration constants
  static const int resendOtpTime = 120;
}

/// Application endpoints
class AppURL {
  static const String baseUrl = kReleaseMode ? liveBaseUrl : devBaseUrl;
  static const liveBaseUrl = "https://server.pollinlink.com/v1/";
  static const devBaseUrl = "http://18.225.37.39:3000/v1/";

  /// Authentication endpoints
  static const String login = "auth/login";
  static const String signup = "auth/signup";
  static const String createAgronomist = "agronomist";
  static const String createPollinator = "pollinator";
  static const String forgotPassword = "auth/forgot-password";
  static const String resetPassword = "auth/reset-password";
  static const String refreshToken = "auth/refresh-token";
  static const String verifyOtp = "auth/verify-otp";
  static const String verifyPhoneNumber = "auth/verify-phonenumber";
  static const String resendOTP = "auth/resend-otp";
  static const String logout = "auth/logout";
  static const String checkCompanycode = "auth/check-company-code";
  static const String acceptCompanyCode = "pollinator/accept-company-code";

  /// User endpoints
  static const String userProfile = "auth/me";
  static const String agronomistProfile = "agronomist/me";
  static const String updateProfile = "user/profile/update";

  /// Chemical application endpoints
  static const String chemicalApplication = "chemical-application";
  static String chemicalApplicationForField(String fieldId) =>
      "$chemicalApplication/$fieldId";
  static String chemicalApplicationStatus(String id) =>
      "$chemicalApplication/status/$id";

  /// Pollination endpoints
  static const String pollinationRequests = "pollination/requests";
  static const String pollinationDetails = "pollination/details";
  static const String pollinationAccept = "pollination/accept";
  static const String pollinationReject = "pollination/reject";
  static const String pollinationComplete = "pollination/complete";

  /// Info Field endpoints
  static const String field = "field";
  static const String fieldDetails = "field/details";
  static const String fieldUpdate = "field/update";
  static const String fieldDelete = "field/delete";

  /// Get list of legal land descriptions for the user's fields
  static const String legalLandDescriptions = "field/land-description";

  /// App store links
  static const String appStoreUrl =
      "https://apps.apple.com/us/app/pollinlink/id1234567890";
  static const String playStoreUrl =
      "https://play.google.com/store/apps/details?id=com.pollinlink.app";

  /// Dashboard endpoints
  static const String basicsStats = "basics/stats";

  /// Task endpoints
  static const String task = "task";
  static const String status = "status";
  static String taskForField(String fieldId) => "task/$fieldId";
  static String updateTaskStatus(String taskId) => "$task/$status/$taskId";
  static String updateTask(String taskId) => "$task/$taskId";
  static String acceptTask(String taskId) => "$task/accept-task/$taskId";
  static const String account = "account";
  static const String invites = "invites";
  static const String types = "types";

  static String upload(String folder) => "upload/$folder";

  /// Task Attachment endpoint
  static const String attachment = "attachment";
  static String updateTaskAttachment(String taskId, String action) =>
      "$task/$attachment/$taskId/$action";

  /// Task Irrigation endpoint
  static const String irrigation = "irrigation";
  static String updateTaskIrrigation(String taskId, String action) =>
      "$task/$irrigation/$taskId/$action";

  /// Endpoint for deleting a task
  static String deleteTask(String taskId) => "$task/$taskId";

  /// New endpoint for pollinator/check-company-name
  static const String checkPollinatorCompanyName =
      "pollinator/check-company-name";

  /// Task Availability endpoint
  static String getTaskAvailability(String fieldId) =>
      "task/get-availability/$fieldId";

  /// Pollinator unavailable dates endpoint
  static const String pollinatorUnavailableDates = "basics/unavailable-dates";

  /// Pollinator unavailable dates POST endpoint (same as GET)
  static const String setPollinatorUnavailableDates =
      "basics/unavailable-dates";

  /// Pollinator unavailable dates DELETE endpoint (same as GET/POST)
  static const String removePollinatorUnavailableDates =
      "basics/unavailable-dates";

  /// Task limits endpoint
  static const String getTaskLimits = "basics/task-limits";
  static const String updateTaskLimits = "basics/task-limit";

  /// Weekly availability endpoint
  static const String getWeeklyAvailability = "basics/availability";

  /// Weekly availability PATCH endpoint (same as GET)
  static const String updateWeeklyAvailability = "basics/availability";

  /// Update field pins endpoint
  static String updateFieldPins(String fieldId) => "field/pins/$fieldId";
}

/// Application constants
class AppConstants {
  /// Storage keys
  static const String authTokenKey = "authToken";
  static const String refreshTokenKey = "refreshToken";
  static const String userDataKey = "userData";
  static const String onboardingCompletedKey = "onboardingCompleted";
  static const String isUserFirstTime = "isUserFirstTime";
  static const String userObject = "userObject";
  static const String rememberMe = "rememberMe";

  /// User roles
  static const String agronomistRole = "agronomist";
  static const String pollinatorRole = "pollinator";

  /// App name
  static const String appName = "PollinLink";

  /// Routes
  static const String loginRoute = "/login";
  static const String onboardingRoute = "/onboarding";
  static const String homeRoute = "/home";
  static const String profileRoute = "/profile";
  static const String settingsRoute = "/settings";

  /// Sentry DSN
  static const String sentryDSN =
      "https://your-sentry-dsn@sentry.io/your-project-id";
}
