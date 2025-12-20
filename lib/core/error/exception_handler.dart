import 'dart:async';
import 'dart:io';

import 'package:eduway/core/error/app_exception.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:eduway/generated/l10n.dart';

class ExceptionHandler {
  static Exception handle(dynamic error) {
    // Auth errors
    if (error is AuthException) {
      final code = int.tryParse(error.statusCode ?? '') ?? 0;
      final rawMessage = error.message;

      switch (code) {
        case 400:
        case 401:
          return UnauthorizedException(S.current.error_invalidData);
        case 403:
          return UnauthorizedException(S.current.error_noPermission);
        case 404:
          return UnauthorizedException(S.current.error_accountNotFound);
        case 409:
          return ValidationException(S.current.error_emailAlreadyRegistered);
        case 422:
          return ValidationException(S.current.error_invalidEmailPasswordFormat);
        case 429:
          return ServerException(S.current.error_tooManyAttempts);
        default:
          if (code >= 500) {
            return ServerException(S.current.error_server);
          } else if (code >= 400 && code < 500) {
            return ServerException(rawMessage);
          } else {
            return UnexpectedException();
          }
      }
    }

    if (error is ValidationException) return error;

    if (error is PostgrestException) {
      return ServerException(error.message);
    }

    if (error is ServerException) return error;

    if (error is SocketException) {
      return NetworkException(S.current.error_noInternet);
    }

    if (error is TimeoutException) {
      return NetworkException(S.current.error_connectionTimedOut);
    }

    return UnexpectedException();
  }
}
