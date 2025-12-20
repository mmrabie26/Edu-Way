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
    final name = (locale.countryCode?.isEmpty ?? false)
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

  /// `Full Name`
  String get auth_fullName {
    return Intl.message(
      'Full Name',
      name: 'auth_fullName',
      desc: 'Label for full name field',
      args: [],
    );
  }

  /// `Email`
  String get auth_email {
    return Intl.message(
      'Email',
      name: 'auth_email',
      desc: 'Label for email field',
      args: [],
    );
  }

  /// `Password`
  String get auth_password {
    return Intl.message(
      'Password',
      name: 'auth_password',
      desc: 'Label for password field',
      args: [],
    );
  }

  /// `Confirm Password`
  String get auth_confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'auth_confirmPassword',
      desc: 'Label for confirm password field',
      args: [],
    );
  }

  /// `Sign Up`
  String get auth_signUp {
    return Intl.message(
      'Sign Up',
      name: 'auth_signUp',
      desc: 'Sign up button text',
      args: [],
    );
  }

  /// `Sign In`
  String get auth_signIn {
    return Intl.message(
      'Sign In',
      name: 'auth_signIn',
      desc: 'Sign in button text',
      args: [],
    );
  }

  /// `Sign in with Facebook`
  String get auth_signInWithFacebook {
    return Intl.message(
      'Sign in with Facebook',
      name: 'auth_signInWithFacebook',
      desc: 'Label for sign in with Facebook button',
      args: [],
    );
  }

  /// `or`
  String get auth_or {
    return Intl.message(
      'or',
      name: 'auth_or',
      desc: 'Text shown between social buttons and form',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get auth_dontHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'auth_dontHaveAccount',
      desc: 'Prompt asking the user to create an account',
      args: [],
    );
  }

  /// `Already have an account?`
  String get auth_alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'auth_alreadyHaveAccount',
      desc: 'Prompt asking the user to sign in instead',
      args: [],
    );
  }

  /// `Submit`
  String get auth_submit {
    return Intl.message(
      'Submit',
      name: 'auth_submit',
      desc: 'Generic submit button text',
      args: [],
    );
  }

  /// `OTP Code`
  String get auth_otpCode {
    return Intl.message(
      'OTP Code',
      name: 'auth_otpCode',
      desc: 'Label for OTP code field',
      args: [],
    );
  }

  /// `Verify`
  String get auth_verify {
    return Intl.message(
      'Verify',
      name: 'auth_verify',
      desc: 'Button text to verify OTP',
      args: [],
    );
  }

  /// `Didn't receive code`
  String get auth_didntReceiveCode {
    return Intl.message(
      'Didn\'t receive code',
      name: 'auth_didntReceiveCode',
      desc: 'Text shown when user didn\'t receive the verification code',
      args: [],
    );
  }

  /// `Resend`
  String get auth_resend {
    return Intl.message(
      'Resend',
      name: 'auth_resend',
      desc: 'Button label to resend verification code',
      args: [],
    );
  }

  /// `Enter your email address we sent to {email}`
  String auth_enterYourEmailWeSentTo(Object email) {
    return Intl.message(
      'Enter your email address we sent to $email',
      name: 'auth_enterYourEmailWeSentTo',
      desc:
          'Instruction telling the user which email address received the verification email',
      args: [email],
    );
  }

  /// `Verification Successful`
  String get auth_verificationSuccessful {
    return Intl.message(
      'Verification Successful',
      name: 'auth_verificationSuccessful',
      desc: 'Message shown when verification succeeds',
      args: [],
    );
  }

  /// `Something went wrong`
  String get auth_somethingWentWrong {
    return Intl.message(
      'Something went wrong',
      name: 'auth_somethingWentWrong',
      desc: 'Generic error message',
      args: [],
    );
  }

  /// `Login Successful`
  String get auth_loginSuccessful {
    return Intl.message(
      'Login Successful',
      name: 'auth_loginSuccessful',
      desc: 'Message shown when login succeeds',
      args: [],
    );
  }

  /// `Check your email to verify account.`
  String get auth_checkYourEmailToVerifyAccount {
    return Intl.message(
      'Check your email to verify account.',
      name: 'auth_checkYourEmailToVerifyAccount',
      desc: 'Message shown after successful signup',
      args: [],
    );
  }

  /// `Invalid email`
  String get auth_invalidEmail {
    return Intl.message(
      'Invalid email',
      name: 'auth_invalidEmail',
      desc: 'Validation message when email is invalid',
      args: [],
    );
  }

  /// `Invalid password`
  String get auth_invalidPassword {
    return Intl.message(
      'Invalid password',
      name: 'auth_invalidPassword',
      desc: 'Validation message when password is invalid',
      args: [],
    );
  }

  /// `- 0:{time}`
  String auth_timeRemaining(Object time) {
    return Intl.message(
      '- 0:$time',
      name: 'auth_timeRemaining',
      desc: 'Countdown timer text before resend',
      args: [time],
    );
  }

  /// `Full name is invalid`
  String get auth_fullNameInvalid {
    return Intl.message(
      'Full name is invalid',
      name: 'auth_fullNameInvalid',
      desc: 'Validation message when full name is invalid',
      args: [],
    );
  }

  /// `Confirm password is invalid`
  String get auth_confirmPasswordInvalid {
    return Intl.message(
      'Confirm password is invalid',
      name: 'auth_confirmPasswordInvalid',
      desc: 'Validation message when confirm password is invalid',
      args: [],
    );
  }

  /// `We just sent an email`
  String get auth_weJustSentAnEmail {
    return Intl.message(
      'We just sent an email',
      name: 'auth_weJustSentAnEmail',
      desc: 'Title for email-sent verification screen',
      args: [],
    );
  }

  /// `Invalid data.`
  String get error_invalidData {
    return Intl.message(
      'Invalid data.',
      name: 'error_invalidData',
      desc: 'Generic invalid data message',
      args: [],
    );
  }

  /// `You do not have permission to access this resource.`
  String get error_noPermission {
    return Intl.message(
      'You do not have permission to access this resource.',
      name: 'error_noPermission',
      desc: 'Permission denied message',
      args: [],
    );
  }

  /// `Account not found.`
  String get error_accountNotFound {
    return Intl.message(
      'Account not found.',
      name: 'error_accountNotFound',
      desc: 'Account not found message',
      args: [],
    );
  }

  /// `This email is already registered. Please sign in instead.`
  String get error_emailAlreadyRegistered {
    return Intl.message(
      'This email is already registered. Please sign in instead.',
      name: 'error_emailAlreadyRegistered',
      desc: 'Used when signup email already exists',
      args: [],
    );
  }

  /// `Email or password format is not valid.`
  String get error_invalidEmailPasswordFormat {
    return Intl.message(
      'Email or password format is not valid.',
      name: 'error_invalidEmailPasswordFormat',
      desc: 'Invalid format for email or password',
      args: [],
    );
  }

  /// `Too many attempts. Please try again later.`
  String get error_tooManyAttempts {
    return Intl.message(
      'Too many attempts. Please try again later.',
      name: 'error_tooManyAttempts',
      desc: 'Rate limit message',
      args: [],
    );
  }

  /// `Server error. Please try again later.`
  String get error_server {
    return Intl.message(
      'Server error. Please try again later.',
      name: 'error_server',
      desc: 'Generic server error message',
      args: [],
    );
  }

  /// `No internet connection`
  String get error_noInternet {
    return Intl.message(
      'No internet connection',
      name: 'error_noInternet',
      desc: 'Network connectivity message',
      args: [],
    );
  }

  /// `Connection timed out`
  String get error_connectionTimedOut {
    return Intl.message(
      'Connection timed out',
      name: 'error_connectionTimedOut',
      desc: 'Timeout message',
      args: [],
    );
  }

  /// `An unexpected error occurred. Please try again.`
  String get error_unexpected {
    return Intl.message(
      'An unexpected error occurred. Please try again.',
      name: 'error_unexpected',
      desc: 'Fallback unexpected error message',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
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
