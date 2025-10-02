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
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final TextStyle? hintStyle;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final TextInputType? keyboardType;
  const AppTextFormField({
    this.keyboardType,
    super.key,
    required this.hintText,
    this.suffuixIcon,
    this.obscureText,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.errorBorder,
    this.focusedErrorBorder,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
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
        errorBorder:
            errorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(color: Colors.red, width: 1.3.w),
            ),
        focusedErrorBorder:
            focusedErrorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(color: Colors.red, width: 1.3.w),
            ),
        fillColor: backgroundColor ?? ColorsManager.moreLighterGery,
        filled: true,
        hintStyle: hintStyle ?? TextStyles.font14GreyRegular,
        hintText: hintText,
        suffixIcon: suffuixIcon ?? suffuixIcon,
      ),
      obscureText: obscureText ?? false,
      validator: (value) => validator(value),
    );
  }
}
