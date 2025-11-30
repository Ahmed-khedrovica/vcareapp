import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vcareapp/core/helpers/extensions.dart';
import 'package:vcareapp/core/routing/routes.dart';
import 'package:vcareapp/core/theming/colors.dart';
import 'package:vcareapp/features/login/logic/login_cubit.dart';
import 'package:vcareapp/features/login/logic/login_state.dart';

import '../../../../core/theming/styles.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
      current is LoginLoading ||
          current is LoginSuccess ||
          current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(context: context,
                builder: (context) =>
                const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.mainBlue,
                  ),
                )
            );
          },
          success: (loginResponse) {
             context.pop();
             context.pushReplacementNamed(Routes.homeScreen);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: AppTextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: AppTextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
