import 'package:eduway/core/constants/enums.dart';
import 'package:equatable/equatable.dart';

class SignUpState extends Equatable {
  final RequestStatus requestStatus;
  final String fullName;
  final String email;
  final String password;
  final String confirmPassword;
  final bool passwordHide;
  final bool confirmPasswordHide;
  final bool fullNameValid;
  final bool emailValid;
  final bool passwordValid;
  final bool confirmPasswordValid;
  final String errorMessage;
  get signUpValidation =>
      fullNameValid && emailValid && passwordValid && confirmPasswordValid;

  const SignUpState({
    required this.requestStatus,
    this.fullName = '',
    this.email = '',
    this.password = '',
    this.confirmPassword = '',
    this.fullNameValid = false,
    this.emailValid = false,
    this.passwordValid = false,
    this.confirmPasswordValid = false,
    this.errorMessage = '',
    this.passwordHide = true,
    this.confirmPasswordHide = true,
  });

  SignUpState copyWith({
    RequestStatus? requestStatus,
    String? fullName,
    String? email,
    String? password,
    String? confirmPassword,
    bool? fullNameValid,
    bool? emailValid,
    bool? passwordValid,
    bool? confirmPasswordValid,
    String? errorMessage,
    bool? passwordHide,
    bool? confirmPasswordHide,
  }) => SignUpState(
    requestStatus: requestStatus ?? this.requestStatus,
    fullName: fullName ?? this.fullName,
    email: email ?? this.email,
    password: password ?? this.password,
    confirmPassword: confirmPassword ?? this.confirmPassword,
    passwordHide: passwordHide ?? this.passwordHide,
    fullNameValid: fullNameValid ?? this.fullNameValid,
    emailValid: emailValid ?? this.emailValid,
    passwordValid: passwordValid ?? this.passwordValid,
    confirmPasswordValid: confirmPasswordValid ?? this.confirmPasswordValid,
    errorMessage: errorMessage ?? this.errorMessage,
    confirmPasswordHide: confirmPasswordHide ?? this.confirmPasswordHide,
  );

  @override
  List<Object?> get props => [
    requestStatus,
    fullName,
    email,
    password,
    confirmPassword,
    fullNameValid,
    emailValid,
    passwordValid,
    confirmPasswordValid,
    errorMessage,
    passwordHide,
    confirmPasswordHide,
  ];
}
