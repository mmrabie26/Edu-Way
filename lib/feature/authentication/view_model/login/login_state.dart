import 'package:eduway/core/constants/enums.dart';
import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final String email;
  final String phone;
  final String password;
  final String errorMessage;
  final bool emailValid;
  final bool passwordValid;
  final bool passwordVisibility;
  get loginValidation => emailValid && passwordValid;
  final RequestStatus loginStatus;

  const LoginState({
    this.email = '',
    this.phone='',
    this.password = '',
    this.errorMessage='',
    this.emailValid = false,
    this.passwordValid = false,
    this.passwordVisibility=false,
    required this.loginStatus,
  });

  LoginState copyWith({
    String? email,
    String? phone,
    String? password,
    String? errorMessage,
    bool? emailValid,
    bool? passwordValid,
    bool? passwordVisibility,
    RequestStatus? loginStatus,
  }) => LoginState(
    email: email ?? this.email,
    phone: phone?? this.phone,
    password: password ?? this.password,
    emailValid: emailValid?? this.emailValid,
    errorMessage: errorMessage?? this.errorMessage,
    passwordValid: passwordValid?? this.passwordValid,
    passwordVisibility: passwordVisibility?? this.passwordVisibility,
    loginStatus: loginStatus ?? this.loginStatus,
  );

  @override
  List<Object?> get props => [
    email,
    phone,
    password,
    errorMessage,
    loginStatus,
    emailValid,
    passwordValid,
    passwordVisibility,
  ];

}
