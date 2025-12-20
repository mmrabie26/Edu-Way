// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(email) => "Enter your email address we sent to ${email}";

  static String m1(time) => "- 0:${time}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "auth_alreadyHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Already have an account?",
    ),
    "auth_checkYourEmailToVerifyAccount": MessageLookupByLibrary.simpleMessage(
      "Check your email to verify account.",
    ),
    "auth_confirmPassword": MessageLookupByLibrary.simpleMessage(
      "Confirm Password",
    ),
    "auth_confirmPasswordInvalid": MessageLookupByLibrary.simpleMessage(
      "Confirm password is invalid",
    ),
    "auth_didntReceiveCode": MessageLookupByLibrary.simpleMessage(
      "Didn\'t receive code",
    ),
    "auth_dontHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Don\'t have an account?",
    ),
    "auth_email": MessageLookupByLibrary.simpleMessage("Email"),
    "auth_enterYourEmailWeSentTo": m0,
    "auth_fullName": MessageLookupByLibrary.simpleMessage("Full Name"),
    "auth_fullNameInvalid": MessageLookupByLibrary.simpleMessage(
      "Full name is invalid",
    ),
    "auth_invalidEmail": MessageLookupByLibrary.simpleMessage("Invalid email"),
    "auth_invalidPassword": MessageLookupByLibrary.simpleMessage(
      "Invalid password",
    ),
    "auth_loginSuccessful": MessageLookupByLibrary.simpleMessage(
      "Login Successful",
    ),
    "auth_or": MessageLookupByLibrary.simpleMessage("or"),
    "auth_otpCode": MessageLookupByLibrary.simpleMessage("OTP Code"),
    "auth_password": MessageLookupByLibrary.simpleMessage("Password"),
    "auth_resend": MessageLookupByLibrary.simpleMessage("Resend"),
    "auth_signIn": MessageLookupByLibrary.simpleMessage("Sign In"),
    "auth_signInWithFacebook": MessageLookupByLibrary.simpleMessage(
      "Sign in with Facebook",
    ),
    "auth_signUp": MessageLookupByLibrary.simpleMessage("Sign Up"),
    "auth_somethingWentWrong": MessageLookupByLibrary.simpleMessage(
      "Something went wrong",
    ),
    "auth_submit": MessageLookupByLibrary.simpleMessage("Submit"),
    "auth_timeRemaining": m1,
    "auth_verificationSuccessful": MessageLookupByLibrary.simpleMessage(
      "Verification Successful",
    ),
    "auth_verify": MessageLookupByLibrary.simpleMessage("Verify"),
    "auth_weJustSentAnEmail": MessageLookupByLibrary.simpleMessage(
      "We just sent an email",
    ),
    "error_accountNotFound": MessageLookupByLibrary.simpleMessage(
      "Account not found.",
    ),
    "error_connectionTimedOut": MessageLookupByLibrary.simpleMessage(
      "Connection timed out",
    ),
    "error_emailAlreadyRegistered": MessageLookupByLibrary.simpleMessage(
      "This email is already registered. Please sign in instead.",
    ),
    "error_invalidData": MessageLookupByLibrary.simpleMessage("Invalid data."),
    "error_invalidEmailPasswordFormat": MessageLookupByLibrary.simpleMessage(
      "Email or password format is not valid.",
    ),
    "error_noInternet": MessageLookupByLibrary.simpleMessage(
      "No internet connection",
    ),
    "error_noPermission": MessageLookupByLibrary.simpleMessage(
      "You do not have permission to access this resource.",
    ),
    "error_server": MessageLookupByLibrary.simpleMessage(
      "Server error. Please try again later.",
    ),
    "error_tooManyAttempts": MessageLookupByLibrary.simpleMessage(
      "Too many attempts. Please try again later.",
    ),
    "error_unexpected": MessageLookupByLibrary.simpleMessage(
      "An unexpected error occurred. Please try again.",
    ),
  };
}
