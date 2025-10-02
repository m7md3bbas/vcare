import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:vcare/core/networking/api_result.dart';
import 'package:vcare/features/login/data/model/login_request_body.dart';
import 'package:vcare/features/login/data/repos/login_repo.dart';
import 'package:vcare/features/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitloginStates(LoginRequestBody loginRequestBody) async {
    emit(LoginState.loading());
    final result = await loginRepo.login(loginRequestBody);
    result.when(
      success: (data) => emit(LoginState.success(data)),
      error: (e) => emit(LoginState.failure(e)),
    );
  }
}
