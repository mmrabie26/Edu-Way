import 'package:eduway/core/error/app_exception.dart';
import 'package:eduway/core/error/failure.dart';

class ErrorMapper {
  static Failure map(Exception error) {
    if (error is NetworkException) {
      return NetworkFailure(error.message);
    }

    if (error is UnauthorizedException) {
      return AuthFailure(error.message);
    }

    if (error is ValidationException) {
      return ValidationFailure(error.message);
    }

    if (error is ServerException) {
      return ServerFailure(error.message);
    }

    if (error is UnexpectedException) {
      return UnexpectedFailure(error.message);
    }

    // احتياط لأي Exception غير متوقع
    return const UnexpectedFailure("Unexpected error");
  }
}
