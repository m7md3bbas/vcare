import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vcare/core/theming/text_styles.dart';
import 'package:vcare/features/onboarding/view/widget/doctor_image_and_text.dart';
import 'package:vcare/features/onboarding/view/widget/get_started_button.dart';
import 'package:vcare/features/onboarding/view/widget/logo_with_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: Column(
              children: [
                const LogoWithText(),
                SizedBox(height: 30.h),
                const DoctorImageAndText(),
                Column(
                  children: [
                    Text(
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      textAlign: TextAlign.center,
                      style: TextStyles.font13GreyRegular,
                    ),
                    SizedBox(height: 30.h),
                    GetStartedButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
