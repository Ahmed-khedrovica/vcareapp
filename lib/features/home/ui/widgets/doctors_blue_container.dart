import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vcareapp/core/helpers/spacing.dart';
import 'package:vcareapp/core/theming/styles.dart';


class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 165.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/home_blue_pattern.png',
                ),
              ),
          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: AppTextStyles.font18WhiteMedium,
                  textAlign: TextAlign.start,
                ),
                verticalSpace(16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.r),
                      ),
                    ),
                    child: Text('Find Nearby',
                    style: AppTextStyles.font12BlueRegular,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              right: 8.w,
              top: 0,
              child: Image.asset(
                'assets/images/home_doctor.png',
              height: 200.h,
              ),
          ),
        ],
      ),
    );
  }
}
