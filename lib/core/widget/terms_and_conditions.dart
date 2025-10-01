import 'package:flutter/material.dart';
import 'package:vcare/core/theming/text_styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By signing up, you agree to our ",
            style: TextStyles.font13GreyRegular,
          ),
          TextSpan(
            text: "Terms and Conditions",
            style: TextStyles.font13blueSemiBold,
          ),
          TextSpan(text: " and ", style: TextStyles.font13GreyRegular),
          TextSpan(
            text: "Privacy Policy",
            style: TextStyles.font13blueSemiBold,
          ),
        ],
      ),
    );
  }
}
