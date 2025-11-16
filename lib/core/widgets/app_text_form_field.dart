import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vcareapp/core/theming/colors.dart';
import 'package:vcareapp/core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backGroundColor;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorsManager.darkBlue,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(
            vertical: 20.w, horizontal: 18.h
        ),
        focusedBorder: focusedBorder ?? OutlineInputBorder(
          borderSide: BorderSide(
              color: ColorsManager.mainBlue, width: 1.3.w),
          borderRadius: BorderRadius.circular(16.r),
        ),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.lighterGrey,
            width: 1.3.w,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        hintStyle: hintStyle ?? TextStyles.font14LightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: backGroundColor ?? ColorsManager.moreLighterGrey,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
