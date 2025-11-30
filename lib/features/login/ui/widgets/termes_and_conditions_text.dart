import 'package:flutter/material.dart';
import 'package:vcareapp/core/theming/styles.dart';

class TermesAndConditionsText extends StatelessWidget {
  const TermesAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'By continuing you agree to our ',
              style: AppTextStyles.font13GreyRegular,
            ),
            TextSpan(
              text: 'Terms & Conditions',
              style: AppTextStyles.font13DarkBlueMedium,
            ),
            TextSpan(
              text: ' and ',
              style: AppTextStyles.font13GreyRegular.copyWith(height: 1.5),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: AppTextStyles.font13DarkBlueMedium,
            ),
          ],
        ),
    );
  }
}
