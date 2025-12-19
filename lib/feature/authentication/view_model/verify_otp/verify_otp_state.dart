import 'package:eduway/core/constants/enums.dart';
import 'package:equatable/equatable.dart';

class VerifyOtpState extends Equatable {
  final RequestStatus requestStatus;
  final String email;
  final String code;
  final bool codeValid;
  final int resendCounter;
  final bool canResned;

  const VerifyOtpState({
    required this.requestStatus,
    required this.email,
    this.code = '',
    this.codeValid = false,
    this.resendCounter = 59,
    this.canResned=false,
  });

  VerifyOtpState copyWith({
    RequestStatus? requestStatus,
    String? email,
    String? code,
    bool? codeValid,
    int? resendCounter,
    bool? canResned,
  }) => VerifyOtpState(
    requestStatus: requestStatus?? this.requestStatus,
    email: email?? this.email,
    code: code ?? this.code,
    codeValid: codeValid ?? this.codeValid,
    resendCounter: resendCounter ?? this.resendCounter,
    canResned: canResned?? this.canResned,
  );

  @override
  List<Object?> get props => [requestStatus, email, code, codeValid, resendCounter,canResned];
}
