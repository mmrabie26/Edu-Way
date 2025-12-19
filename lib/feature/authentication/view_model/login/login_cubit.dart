import 'package:eduway/core/constants/enums.dart';
import 'package:eduway/core/utils/validation.dart';
import 'package:eduway/feature/authentication/model/auth_repo/auth_repo_imp.dart';
import 'package:eduway/feature/authentication/model/data_source/auth_remote_data_source.dart';
import 'package:eduway/feature/authentication/model/data_source/auth_remote_datasource_imp.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide AuthState;
import 'package:eduway/feature/authentication/view_model/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final SupabaseClient client = Supabase.instance.client;
  late final AuthRemoteDataSource _remoteDataSource;
  late final AuthRepoImp _authRepo;

  LoginCubit() : super(LoginState(loginStatus: RequestStatus.initial)) {
    _remoteDataSource = AuthRemoteDatasourceImp(client);
    _authRepo = AuthRepoImp(_remoteDataSource);
  }

  bool checkEmailValidation(String email) =>
      Validation.emailValidForm.hasMatch(email);

  bool checkPasswordValidation(String password) =>
      Validation.passwordValidForm.hasMatch(password);

  void changeEmail(String email) => emit(
    state.copyWith(email: email, emailValid: checkEmailValidation(email)),
  );

  void changePassword(String password) => emit(
    state.copyWith(
      password: password,
      passwordValid: checkPasswordValidation(password),
    ),
  );

  void changePasswordVisibility() =>
      emit(state.copyWith(passwordVisibility: !state.passwordVisibility));

  Future<void> loginWithEmailOrPhone() async {
    emit(state.copyWith(loginStatus: RequestStatus.loading));

    final response = await _authRepo.loginWithEmailOrPhone(
      state.email,
      state.phone,
      state.password,
    );
    response.fold(
      (l) {
        emit(
          state.copyWith(
            loginStatus: RequestStatus.failure,
            errorMessage: l.message.toString(),
          ),
        );
        emit(
          state.copyWith(
            loginStatus: RequestStatus.initial,
            errorMessage: null,
          ),
        );
      },
      (r) {
        emit(state.copyWith(loginStatus: RequestStatus.loaded));
      },
    );
  }
}
