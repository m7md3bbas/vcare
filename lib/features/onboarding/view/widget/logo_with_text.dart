import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vcare/core/constants/image_dir.dart';
import 'package:vcare/core/theming/text_styles.dart';

class LogoWithText extends StatelessWidget {
  const LogoWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(ImageDir.logo, height: 38.h, width: 38.w),
        SizedBox(width: 10.w),
        Text("DOCDOC", style: TextStyles.font24Black700Weight),
      ],
    );
  }
}
