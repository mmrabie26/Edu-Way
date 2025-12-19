import 'package:dartz/dartz.dart';
import 'package:eduway/core/error/error_mapper.dart';
import 'package:eduway/core/error/failure.dart';
import 'package:eduway/feature/authentication/model/auth_repo/auth_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepoImp extends AuthRepo {
  AuthRepoImp(super.remoteDataSource);

  @override
  Future<Either<Failure, AuthResponse>> loginWithEmailOrPhone(
    String? email,
    String? phone,
    String password,
  ) async {
    try {
      final response = await remoteDataSource.loginWithEmailOrPhone(
        email,
        phone,
        password,
      );
      return Right(response);
    } catch (e) {
      return Left(ErrorMapper.map(e as Exception));
    }
  }

  @override
  Future<Either<Failure, AuthResponse>> signUpWithEmail(
    String email,
    String password,
    Map<String, dynamic>? data,
  ) async {
    try {
      final respone = await remoteDataSource.signUpWithEmail(
        email,
        password,
        data,
      );
      return right(respone);
    } on Exception catch (e) {
      return Left(ErrorMapper.map(e));
    }
  }



  @override
  Future<Either<Failure, void>> verifyOtpEmail({required OtpType type, required String email, required String token}) async{
    try {
      final response = await remoteDataSource.verifyOtpEmail(
        type,
        email,
        token,
      );
      return Right(response);
    } catch (e) {
      return Left(ErrorMapper.map(e as Exception));
    }
  }
  
  @override
  Future<Either<Failure, void>> resendOtpEmail({required OtpType type, required String email}) async{
    try {
      final response = await remoteDataSource.resendOtpEmail(
        type: type,
        email: email,
      );
      return Right(response);
    } catch (e) {
      return Left(ErrorMapper.map(e as Exception));
    }
  }
}
