import 'dart:async';
import 'dart:io';

import 'package:eduway/core/error/app_exception.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ExceptionHandler {
  static Exception handle(dynamic error) {
    // Auth errors
    if (error is AuthException) {
      final code = int.tryParse(error.statusCode ?? '') ?? 0;
      final rawMessage = error.message;

      switch (code) {
        case 400:
        case 401:
          return UnauthorizedException('Invalid data.');
        case 403:
          return UnauthorizedException('You do not have permission to access this resource.');
        case 404:
          return UnauthorizedException('Account not found.');
        case 409:
          return ValidationException('This email is already registered. Please sign in instead.');
        case 422:
          return ValidationException('Email or password format is not valid.');
        case 429:
          return ServerException('Too many attempts. Please try again later.');
        default:
          if (code >= 500) {
            return ServerException('Server error. Please try again later.');
          } else if (code >= 400 && code < 500) {
            return ServerException(rawMessage);
          } else {
            return const UnexpectedException();
          }
      }
    }

    if (error is ValidationException) return error;

    if (error is PostgrestException) {
      return ServerException(error.message);
    }

    if (error is ServerException) return error;

    if (error is SocketException) {
      return const NetworkException("No internet connection");
    }

    if (error is TimeoutException) {
      return const NetworkException("Connection timed out");
    }

    return const UnexpectedException();
  }
}
