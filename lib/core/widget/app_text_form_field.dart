import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vcare/core/theming/colors_manager.dart';
import 'package:vcare/core/theming/text_styles.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffuixIcon;
  final bool? obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final Color? backgroundColor;
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.suffuixIcon,
    this.obscureText,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
    this.backgroundColor,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3.w,
              ),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorsManager.lighterGrey,
                width: 1.3.w,
              ),
            ),
        fillColor: backgroundColor ?? ColorsManager.moreLighterGery,
        filled: true,
        hintStyle: hintStyle ?? TextStyles.font14GreyRegular,
        hintText: hintText,
        suffixIcon: suffuixIcon ?? suffuixIcon,
      ),
      obscureText: obscureText ?? false,
    );
  }
}
