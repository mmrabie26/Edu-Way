import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRemoteDataSource{
    final SupabaseClient client;

  const AuthRemoteDataSource(this.client);
  Future<AuthResponse> loginWithEmailOrPhone(String? email,String? phone,String password);

  Future<AuthResponse> signUpWithEmail(String email, String password, Map<String, dynamic>? data);

  Future<void> verifyOtpEmail(OtpType type, String email, String token);

  Future<void> resendOtpEmail({required OtpType type, required String email});
}