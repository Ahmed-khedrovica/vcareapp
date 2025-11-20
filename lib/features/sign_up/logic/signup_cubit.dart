import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:vcareapp/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:vcareapp/features/sign_up/logic/signup_state.dart';

import '../../../core/networking/api_result.dart';
import '../data/repos/sign_up_repo.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;

  SignupCubit(this._signupRepo) : super((const SignupState.initial()));

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignupState.loading());
    await Future.delayed(const Duration(seconds: 2));
    final response = await _signupRepo.signup(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (signupResponse) {
        emit(SignupState.success(signupResponse));
      },
      failure: (error) {
        emit(
          SignupState.error(errorMessage: error.apiErrorModel.message ?? ''),
        );
      },
    );
  }
}
