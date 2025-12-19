import 'dart:async';
 
import 'package:eduway/core/error/app_exception.dart';
import 'package:eduway/core/error/exception_handler.dart';
import 'package:eduway/feature/authentication/model/data_source/auth_remote_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRemoteDatasourceImp extends AuthRemoteDataSource {
  const AuthRemoteDatasourceImp(super.client);

  @override
  Future<AuthResponse> loginWithEmailOrPhone(
    String? email,
    String? phone,
    String password,
  ) async {
    try {
      if (email == null && phone == null) {
        throw ValidationException('Either email or phone must be provided');
      }
      final AuthResponse response = await client.auth.signInWithPassword(
        password: password,
        email: email,
        phone: phone,
      );
      if (response.user != null) {
        if (response.user!.emailConfirmedAt == null &&
            response.user!.phoneConfirmedAt == null) {
          throw ServerException("Please verify your account");
        }

        return response;
      } else {
        throw UnauthorizedException("Check Your Email or password");
      }
    } catch (exception) {
      throw ExceptionHandler.handle(exception);
    }
  }

  @override
  Future<AuthResponse> signUpWithEmail(
    String email,
    String password,
    Map<String, dynamic>? data,
  ) async {
    try {
      return await client.auth.signUp(
        email: email,
        password: password,
        data: data,
      );
    } catch (exception) {
      throw ExceptionHandler.handle(exception);
    }
  }

  @override
  Future<void> verifyOtpEmail(OtpType type, String email, String token) async {
    try {
      await client.auth.verifyOTP(type: type, email: email, token: token);
    } catch (exception) {
      throw ExceptionHandler.handle(exception);
    }
  }

  @override
  Future<void> resendOtpEmail({required OtpType type, required String email}) {
    try {
      return client.auth.resend(type: type, email: email);
    } catch (exception) {
      throw ExceptionHandler.handle(exception);
    }
  }
}
