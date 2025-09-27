import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vcare/core/constants/image_dir.dart';
import 'package:vcare/core/theming/text_styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(ImageDir.logoWithLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(ImageDir.onboardingDocotr),
        ),

        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor \n Appoinment App",
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold.copyWith(height: 1.2),
          ),
        ),
      ],
    );
  }
}
