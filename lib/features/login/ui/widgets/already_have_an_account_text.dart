import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vcareapp/core/theming/styles.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';

class DontHaveAnAccountText extends StatelessWidget {
  const DontHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'don\'t have an account? ',
              style: AppTextStyles.font13DarkBlueRegular,
            ),
            TextSpan(
              text: 'Sign Up',
              style: AppTextStyles.font13BlueSemiBold,
              recognizer: TapGestureRecognizer()
                ..onTap = (){
                  context.pushReplacementNamed(Routes.signupScreen);
            }
            ),
          ]
        ),
    );
  }
}
