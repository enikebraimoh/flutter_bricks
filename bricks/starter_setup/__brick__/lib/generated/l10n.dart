// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `PollinLink`
  String get appName {
    return Intl.message('PollinLink', name: 'appName', desc: '', args: []);
  }

  /// `PollinLink is a mobile app that simplifies collaboration between agronomists, pollinators, and more`
  String get appDescription {
    return Intl.message(
      'PollinLink is a mobile app that simplifies collaboration between agronomists, pollinators, and more',
      name: 'appDescription',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message('Loading...', name: 'loading', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message('Get Started', name: 'getStarted', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Sign Up`
  String get signup {
    return Intl.message('Sign Up', name: 'signup', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message('First Name', name: 'firstName', desc: '', args: []);
  }

  /// `Last Name`
  String get lastName {
    return Intl.message('Last Name', name: 'lastName', desc: '', args: []);
  }

  /// `Company Code`
  String get companyCode {
    return Intl.message(
      'Company Code',
      name: 'companyCode',
      desc: '',
      args: [],
    );
  }

  /// `Role`
  String get role {
    return Intl.message('Role', name: 'role', desc: '', args: []);
  }

  /// `Pollinator`
  String get pollinator {
    return Intl.message('Pollinator', name: 'pollinator', desc: '', args: []);
  }

  /// `Agronomist`
  String get agronomist {
    return Intl.message('Agronomist', name: 'agronomist', desc: '', args: []);
  }

  /// `I accept the Terms and Conditions`
  String get acceptTerms {
    return Intl.message(
      'I accept the Terms and Conditions',
      name: 'acceptTerms',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPassword {
    return Intl.message(
      'Reset Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address and we'll send you instructions to reset your password.`
  String get resetPasswordInstructions {
    return Intl.message(
      'Enter your email address and we\'ll send you instructions to reset your password.',
      name: 'resetPasswordInstructions',
      desc: '',
      args: [],
    );
  }

  /// `Send Reset Link`
  String get sendResetLink {
    return Intl.message(
      'Send Reset Link',
      name: 'sendResetLink',
      desc: '',
      args: [],
    );
  }

  /// `Back to Login`
  String get backToLogin {
    return Intl.message(
      'Back to Login',
      name: 'backToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message('Dashboard', name: 'dashboard', desc: '', args: []);
  }

  /// `Welcome to PollinLink`
  String get welcomeToPollinLink {
    return Intl.message(
      'Welcome to PollinLink',
      name: 'welcomeToPollinLink',
      desc: '',
      args: [],
    );
  }

  /// `Navigate and see every field at a glance`
  String get navigateAndSeeEveryField {
    return Intl.message(
      'Navigate and see every field at a glance',
      name: 'navigateAndSeeEveryField',
      desc: '',
      args: [],
    );
  }

  /// `Track all stages of your tasks with ease`
  String get trackAllStagesOfTasks {
    return Intl.message(
      'Track all stages of your tasks with ease',
      name: 'trackAllStagesOfTasks',
      desc: '',
      args: [],
    );
  }

  /// `Connect and collaborate efficiently`
  String get connectAndCollaborate {
    return Intl.message(
      'Connect and collaborate efficiently',
      name: 'connectAndCollaborate',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get createAnAccount {
    return Intl.message(
      'Create an account',
      name: 'createAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get logIn {
    return Intl.message('Log in', name: 'logIn', desc: '', args: []);
  }

  /// `Statistics`
  String get statistics {
    return Intl.message('Statistics', name: 'statistics', desc: '', args: []);
  }

  /// `Assignments`
  String get assignments {
    return Intl.message('Assignments', name: 'assignments', desc: '', args: []);
  }

  /// `Completed Tasks`
  String get completedTasks {
    return Intl.message(
      'Completed Tasks',
      name: 'completedTasks',
      desc: '',
      args: [],
    );
  }

  /// `Rating`
  String get rating {
    return Intl.message('Rating', name: 'rating', desc: '', args: []);
  }

  /// `Active Assignments`
  String get activeAssignments {
    return Intl.message(
      'Active Assignments',
      name: 'activeAssignments',
      desc: '',
      args: [],
    );
  }

  /// `Nearby Farms`
  String get nearbyFarms {
    return Intl.message(
      'Nearby Farms',
      name: 'nearbyFarms',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get viewAll {
    return Intl.message('View All', name: 'viewAll', desc: '', args: []);
  }

  /// `History`
  String get history {
    return Intl.message('History', name: 'history', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `No data available`
  String get noData {
    return Intl.message(
      'No data available',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message('Error', name: 'error', desc: '', args: []);
  }

  /// `Success`
  String get success {
    return Intl.message('Success', name: 'success', desc: '', args: []);
  }

  /// `Try Again`
  String get tryAgain {
    return Intl.message('Try Again', name: 'tryAgain', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Create your account`
  String get signupCreateAccount {
    return Intl.message(
      'Create your account',
      name: 'signupCreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign up to simplify task coordination, enhance field visibility, and track progress like never before.`
  String get signupDescription {
    return Intl.message(
      'Sign up to simplify task coordination, enhance field visibility, and track progress like never before.',
      name: 'signupDescription',
      desc: '',
      args: [],
    );
  }

  /// `Sign up as an Agronomist`
  String get signupAsAgronomist {
    return Intl.message(
      'Sign up as an Agronomist',
      name: 'signupAsAgronomist',
      desc: '',
      args: [],
    );
  }

  /// `Sign up as a Pollinator`
  String get signupAsPollinator {
    return Intl.message(
      'Sign up as a Pollinator',
      name: 'signupAsPollinator',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueText {
    return Intl.message('Continue', name: 'continueText', desc: '', args: []);
  }

  /// `We adhere to strict Privacy Policies to ensure your information is accessible only to those you authorize.`
  String get privacyPolicyText {
    return Intl.message(
      'We adhere to strict Privacy Policies to ensure your information is accessible only to those you authorize.',
      name: 'privacyPolicyText',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `This is an invite only platform which requires your unique company's code before access is granted.`
  String get companyCodeInfo {
    return Intl.message(
      'This is an invite only platform which requires your unique company\'s code before access is granted.',
      name: 'companyCodeInfo',
      desc: '',
      args: [],
    );
  }

  /// `See how to get company code here`
  String get howToGetCompanyCode {
    return Intl.message(
      'See how to get company code here',
      name: 'howToGetCompanyCode',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `I agree to the Terms & Conditions and the Privacy Policy`
  String get agreeToTerms {
    return Intl.message(
      'I agree to the Terms & Conditions and the Privacy Policy',
      name: 'agreeToTerms',
      desc: '',
      args: [],
    );
  }

  /// `8 Characters`
  String get passwordValidation8Chars {
    return Intl.message(
      '8 Characters',
      name: 'passwordValidation8Chars',
      desc: '',
      args: [],
    );
  }

  /// `Uppercase`
  String get passwordValidationUppercase {
    return Intl.message(
      'Uppercase',
      name: 'passwordValidationUppercase',
      desc: '',
      args: [],
    );
  }

  /// `Lowercase`
  String get passwordValidationLowercase {
    return Intl.message(
      'Lowercase',
      name: 'passwordValidationLowercase',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get passwordValidationNumber {
    return Intl.message(
      'Number',
      name: 'passwordValidationNumber',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address`
  String get invalidEmailAddress {
    return Intl.message(
      'Invalid email address',
      name: 'invalidEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `The email address you entered is invalid, please check for typos or try again.`
  String get invalidEmailDescription {
    return Intl.message(
      'The email address you entered is invalid, please check for typos or try again.',
      name: 'invalidEmailDescription',
      desc: '',
      args: [],
    );
  }

  /// `Enter verification code`
  String get enterVerificationCode {
    return Intl.message(
      'Enter verification code',
      name: 'enterVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `We sent a six digit code to your email {email}`
  String verificationCodeSent(String email) {
    return Intl.message(
      'We sent a six digit code to your email $email',
      name: 'verificationCodeSent',
      desc: '',
      args: [email],
    );
  }

  /// `Didn't get a code?`
  String get didntGetCode {
    return Intl.message(
      'Didn\'t get a code?',
      name: 'didntGetCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend code`
  String get resendCode {
    return Intl.message('Resend code', name: 'resendCode', desc: '', args: []);
  }

  /// `We adhere to strict `
  String get privacyPolicyTextBeforeLink {
    return Intl.message(
      'We adhere to strict ',
      name: 'privacyPolicyTextBeforeLink',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policies`
  String get privacyPolicyLinkText {
    return Intl.message(
      'Privacy Policies',
      name: 'privacyPolicyLinkText',
      desc: '',
      args: [],
    );
  }

  /// ` to ensure your information is accessible only to those you authorize.`
  String get privacyPolicyTextAfterLink {
    return Intl.message(
      ' to ensure your information is accessible only to those you authorize.',
      name: 'privacyPolicyTextAfterLink',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message('Verify', name: 'verify', desc: '', args: []);
  }

  /// `Account created\nsuccessfully!`
  String get accountCreatedSuccessfully {
    return Intl.message(
      'Account created\nsuccessfully!',
      name: 'accountCreatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Verification successful!`
  String get verificationSuccess {
    return Intl.message(
      'Verification successful!',
      name: 'verificationSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Account verification has been completed successfully, click the button below to continue to homepage.`
  String get verificationSuccessDescription {
    return Intl.message(
      'Account verification has been completed successfully, click the button below to continue to homepage.',
      name: 'verificationSuccessDescription',
      desc: '',
      args: [],
    );
  }

  /// `Verification pending!`
  String get verificationPending {
    return Intl.message(
      'Verification pending!',
      name: 'verificationPending',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been created successfully. We are now waiting for the company that invited you to accept and verify the creation of your account and then you will be able to access the PollinLink application. Please check back later.`
  String get verificationPendingDescription {
    return Intl.message(
      'Your account has been created successfully. We are now waiting for the company that invited you to accept and verify the creation of your account and then you will be able to access the PollinLink application. Please check back later.',
      name: 'verificationPendingDescription',
      desc: '',
      args: [],
    );
  }

  /// `I agree to the `
  String get iAgreeToThe {
    return Intl.message(
      'I agree to the ',
      name: 'iAgreeToThe',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// ` and the `
  String get and {
    return Intl.message(' and the ', name: 'and', desc: '', args: []);
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back!`
  String get welcomeBack {
    return Intl.message(
      'Welcome back!',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Track progress, manage tasks, and stay on top of everything in one convenient view.`
  String get trackProgressManageTasks {
    return Intl.message(
      'Track progress, manage tasks, and stay on top of everything in one convenient view.',
      name: 'trackProgressManageTasks',
      desc: '',
      args: [],
    );
  }

  /// `Chem Application`
  String get chemApplication {
    return Intl.message(
      'Chem Application',
      name: 'chemApplication',
      desc: '',
      args: [],
    );
  }

  /// `Request Task`
  String get requestTask {
    return Intl.message(
      'Request Task',
      name: 'requestTask',
      desc: '',
      args: [],
    );
  }

  /// `Add additional company code`
  String get addAdditionalCompanyCode {
    return Intl.message(
      'Add additional company code',
      name: 'addAdditionalCompanyCode',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get noInternetConnection {
    return Intl.message(
      'No internet connection',
      name: 'noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection and try again.`
  String get noInternetConnectionDescription {
    return Intl.message(
      'Please check your internet connection and try again.',
      name: 'noInternetConnectionDescription',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while processing your request. Please try again later.`
  String get errorDefaultMessage {
    return Intl.message(
      'An error occurred while processing your request. Please try again later.',
      name: 'errorDefaultMessage',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred`
  String get anErrorOccurred {
    return Intl.message(
      'An error occurred',
      name: 'anErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Please try again`
  String get pleaseTryAgain {
    return Intl.message(
      'Please try again',
      name: 'pleaseTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `No data available`
  String get noDataAvailable {
    return Intl.message(
      'No data available',
      name: 'noDataAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Request cancelled`
  String get requestCancelled {
    return Intl.message(
      'Request cancelled',
      name: 'requestCancelled',
      desc: '',
      args: [],
    );
  }

  /// `The request was cancelled. Please try again later.`
  String get requestCancelledDescription {
    return Intl.message(
      'The request was cancelled. Please try again later.',
      name: 'requestCancelledDescription',
      desc: '',
      args: [],
    );
  }

  /// `Validation error`
  String get validationError {
    return Intl.message(
      'Validation error',
      name: 'validationError',
      desc: '',
      args: [],
    );
  }

  /// `Successful!`
  String get successful {
    return Intl.message('Successful!', name: 'successful', desc: '', args: []);
  }

  /// `All good! Now you can create your password`
  String get allGoodNowYouCanCreateYourPassword {
    return Intl.message(
      'All good! Now you can create your password',
      name: 'allGoodNowYouCanCreateYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message('Today', name: 'today', desc: '', args: []);
  }

  /// `Next 7 Days`
  String get next7Days {
    return Intl.message('Next 7 Days', name: 'next7Days', desc: '', args: []);
  }

  /// `Next 30 Days`
  String get next30Days {
    return Intl.message('Next 30 Days', name: 'next30Days', desc: '', args: []);
  }

  /// `Next 90 Days`
  String get next90Days {
    return Intl.message('Next 90 Days', name: 'next90Days', desc: '', args: []);
  }

  /// `Date Range`
  String get dateRange {
    return Intl.message('Date Range', name: 'dateRange', desc: '', args: []);
  }

  /// `Create Task`
  String get createTask {
    return Intl.message('Create Task', name: 'createTask', desc: '', args: []);
  }

  /// `Update`
  String get update {
    return Intl.message('Update', name: 'update', desc: '', args: []);
  }

  /// `Update Info`
  String get updateInfo {
    return Intl.message('Update Info', name: 'updateInfo', desc: '', args: []);
  }

  /// `Add new details`
  String get addNewDetails {
    return Intl.message(
      'Add new details',
      name: 'addNewDetails',
      desc: '',
      args: [],
    );
  }

  /// `Log`
  String get log {
    return Intl.message('Log', name: 'log', desc: '', args: []);
  }

  /// `Log event`
  String get logEvent {
    return Intl.message('Log event', name: 'logEvent', desc: '', args: []);
  }

  /// `Chemical Application`
  String get chemicalApplication {
    return Intl.message(
      'Chemical Application',
      name: 'chemicalApplication',
      desc: '',
      args: [],
    );
  }

  /// `Log Chemical Application`
  String get logChemicalApplication {
    return Intl.message(
      'Log Chemical Application',
      name: 'logChemicalApplication',
      desc: '',
      args: [],
    );
  }

  /// `Name of Pollination Company`
  String get nameOfPollinationCompany {
    return Intl.message(
      'Name of Pollination Company',
      name: 'nameOfPollinationCompany',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
