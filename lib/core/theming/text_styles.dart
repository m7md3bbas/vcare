import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vcare/core/theming/colors_manager.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font32BlueBold = TextStyle(
    color: ColorsManager.mainBlue,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font13GreyRegular = TextStyle(
    color: Colors.grey,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
}
