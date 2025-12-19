import 'package:dartz/dartz.dart';
import 'package:eduway/core/error/failure.dart';
import 'package:eduway/feature/authentication/model/data_source/auth_remote_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRepo {
  final AuthRemoteDataSource remoteDataSource;
  const AuthRepo(this.remoteDataSource);

  Future<Either<Failure,AuthResponse>> loginWithEmailOrPhone(String? email,
    String? phone,
    String password,) ; 
    
    Future<Either<Failure,AuthResponse>> signUpWithEmail(String email, String password, Map<String, dynamic>? data);


    Future<Either<Failure,void>> verifyOtpEmail({required OtpType type, required String email, required String token});

    Future<Either<Failure,void>> resendOtpEmail({required OtpType type, required String email});
}