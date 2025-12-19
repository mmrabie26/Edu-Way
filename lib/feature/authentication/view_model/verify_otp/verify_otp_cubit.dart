import 'dart:async';

import 'package:eduway/core/constants/enums.dart';
import 'package:eduway/feature/authentication/model/auth_repo/auth_repo_imp.dart';
import 'package:eduway/feature/authentication/model/data_source/auth_remote_data_source.dart';
import 'package:eduway/feature/authentication/model/data_source/auth_remote_datasource_imp.dart';
import 'package:eduway/feature/authentication/view_model/verify_otp/verify_otp_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  Timer? _timer;
  final String email;
  final SupabaseClient client = Supabase.instance.client;
  late final AuthRemoteDataSource _remoteDataSource;
  late final AuthRepoImp _authRepo;

  VerifyOtpCubit({required this.email})
    : super(
        VerifyOtpState(email: email, requestStatus: RequestStatus.initial),
      ) {
    _remoteDataSource = AuthRemoteDatasourceImp(client);
    _authRepo = AuthRepoImp(_remoteDataSource);
  }

  bool checkCodeValidate(String code) => code.length < 6 ? false : true;

  void changeCode(String code) =>
      emit(state.copyWith(code: code, codeValid: checkCodeValidate(code)));

  void changeResendCounter() {
    _timer?.cancel;

    emit(state.copyWith(resendCounter: 59, canResned: false));

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (state.resendCounter == 0) {
        emit(state.copyWith(canResned: true));
        _timer!.cancel();
      } else {
        emit(state.copyWith(resendCounter: (state.resendCounter - 1)));
      }
    });
  }

  Future<void> verifyOtp() async {
    try {
      emit(state.copyWith(requestStatus: RequestStatus.loading));

      var response = await _authRepo.verifyOtpEmail(
        type: OtpType.email,
        email: state.email,
        token: state.code,
      );
      response.fold(
        (l) {
          emit(state.copyWith(requestStatus: RequestStatus.failure));
          emit(state.copyWith(requestStatus: RequestStatus.initial));
        },
        (r) {
          emit(state.copyWith(requestStatus: RequestStatus.loaded));
        },
      );
    } catch (e) {
      emit(state.copyWith(requestStatus: RequestStatus.failure));
      emit(state.copyWith(requestStatus: RequestStatus.initial));
    }
  }

  Future<void> resnedCode() async {
    await _authRepo.resendOtpEmail(type: OtpType.signup, email: state.email);
    changeResendCounter();
  }
}
