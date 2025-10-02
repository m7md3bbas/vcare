import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final TextStyle? style;
  final double? buttonHeight;
  final double? buttonWidth;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? borderRadius;
  final Color backgroundColor;
  const AppTextButton({
    super.key,
    required this.text,
    required this.onPress,
    this.style,
    this.buttonHeight,
    this.buttonWidth,
    this.horizontalPadding,
    this.verticalPadding,
    this.borderRadius,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
        ),
        fixedSize: Size(buttonWidth ?? 340.w, buttonHeight ?? 50.h),
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 0,
          vertical: verticalPadding ?? 0,
        ),
      ),
      onPressed: onPress,
      child: Text(
        text,
        style: style ?? TextStyle(fontSize: 16.sp, color: Colors.white),
      ),
    );
  }
}
