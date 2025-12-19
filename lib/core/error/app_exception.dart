import 'package:equatable/equatable.dart';

abstract class AppException extends Equatable implements Exception {
  final String message;
  const AppException(this.message);
  
  @override
  List<Object?> get props => [message];
}

class ValidationException extends AppException{
  const ValidationException(super.message);
}

// Network
class NetworkException extends AppException {
  const NetworkException(super.message);
}

// Auth / Credentials
class UnauthorizedException extends AppException {
  const UnauthorizedException(super.message);
}

// Server / Supabase
class ServerException extends AppException {
  const ServerException(super.message);
}

// Fallback
class UnexpectedException extends AppException {
  const UnexpectedException() : super("An unexpected error occurred. Please try again.");
}