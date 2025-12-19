import 'package:eduway/core/constants/enums.dart';
import 'package:eduway/core/utils/validation.dart';
import 'package:eduway/feature/authentication/model/auth_repo/auth_repo_imp.dart';
import 'package:eduway/feature/authentication/model/data_source/auth_remote_data_source.dart';
import 'package:eduway/feature/authentication/model/data_source/auth_remote_datasource_imp.dart';
import 'package:eduway/feature/authentication/view_model/signup/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SupabaseClient client = Supabase.instance.client;
  late final AuthRemoteDataSource _remoteDataSource;
  late final AuthRepoImp _authRepo;
  
  SignUpCubit() : super(SignUpState(requestStatus: RequestStatus.initial)) {
    _remoteDataSource = AuthRemoteDatasourceImp(client);
    _authRepo = AuthRepoImp(_remoteDataSource);
  }

  bool checkFullNameValidation(String fullName) =>
      Validation.fullNameValidForm.hasMatch(fullName);

  bool checkEmailValidation(String email) =>
      Validation.emailValidForm.hasMatch(email);

  bool checkPasswordValidation(String password) =>
      Validation.passwordValidForm.hasMatch(password);

  void changeFullName(String fullName) => emit(
    state.copyWith(
      fullName: fullName,
      fullNameValid: checkFullNameValidation(fullName),
    ),
  );

  void changeEmail(String email) => emit(
    state.copyWith(email: email, emailValid: checkEmailValidation(email)),
  );

  void changePassword(String password) => emit(
    state.copyWith(
      password: password,
      passwordValid: checkPasswordValidation(password),
    ),
  );

  void changeConfirmPassword(String confirmPassword) => emit(
    state.copyWith(
      confirmPassword: confirmPassword,
      confirmPasswordValid:
          checkPasswordValidation(confirmPassword) &&
          state.password == confirmPassword,
    ),
  );

  void changePasswordVisibility() =>
      emit(state.copyWith(passwordHide: !state.passwordHide));

  void changeConfirmPasswordVisibility() =>
      emit(state.copyWith(confirmPasswordHide: !state.confirmPasswordHide));

  Future<void> signUpWithEmail() async {
    emit(state.copyWith(requestStatus: RequestStatus.loading));

    // try {
    final response = await _authRepo.signUpWithEmail(
      state.email,
      state.password,
      {"name": state.fullName},
    );

    response.fold(
      (l) {
        emit(
          state.copyWith(
            requestStatus: RequestStatus.failure,
            errorMessage: l.message,
          ),
        );
        emit(
          state.copyWith(
            requestStatus: RequestStatus.initial,
            errorMessage: '',
          ),
        );
      },
      (r) {
        emit(state.copyWith(requestStatus: RequestStatus.loaded));
      },
    );

    // } catch (e) {
    //   emit(
    //     state.copyWith(
    //       requestStatus: RequestStatus.failure,
    //       errorMessage: e.toString(),
    //     ),
    //   );
    //   emit(
    //     state.copyWith(requestStatus: RequestStatus.initial, errorMessage: ''),
    //   );
    // }
  }
}
