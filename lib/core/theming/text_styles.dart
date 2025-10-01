import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vcare/core/theming/colors_manager.dart';
import 'package:vcare/core/theming/font_weight.dart';

class TextStyles {
  static TextStyle font24Blackbold = TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font32BlueBold = TextStyle(
    color: ColorsManager.mainBlue,
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font30DarkBlueRegular = TextStyle(
    color: ColorsManager.darkBlue,
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font24BlueBold = TextStyle(
    color: ColorsManager.mainBlue,
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font13GreyRegular = TextStyle(
    color: Colors.grey,
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font13blueRegular = TextStyle(
    color: ColorsManager.mainBlue,
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font13blueSemiBold = TextStyle(
    color: ColorsManager.mainBlue,
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font14LightGreyRegular = TextStyle(
    color: ColorsManager.lightGrey,
    fontSize: 14,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14GreyRegular = TextStyle(
    color: Colors.grey,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    color: ColorsManager.darkBlue,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font16WhiteMeduim = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
  );
}
