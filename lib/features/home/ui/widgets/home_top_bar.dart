import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vcareapp/core/theming/colors.dart';
import 'package:vcareapp/core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar!',
            style: AppTextStyles.font18DarkBlueBold,
            ),
            Text(
              'How are you feeling today?',
              style: AppTextStyles.font12GreyRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.moreLightGrey,
          child: SvgPicture.asset(
              'assets/svgs/notifications.svg'
          ),
        )
      ],
    );
  }
}
