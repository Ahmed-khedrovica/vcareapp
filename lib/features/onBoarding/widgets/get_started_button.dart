import 'package:flutter/material.dart';
import 'package:vcareapp/core/helpers/extensions.dart';
import 'package:vcareapp/core/theming/colors.dart';
import 'package:vcareapp/core/theming/styles.dart';

import '../../../core/routing/routes.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        context.pushNamed(Routes.loginScreen);
      },
      style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: ColorsManager.mainBlue,
        minimumSize: const Size(double.infinity, 52),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Text(
        'Get Started',
      style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
