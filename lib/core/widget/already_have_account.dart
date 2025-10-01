import 'package:flutter/material.dart';
import 'package:vcare/core/theming/text_styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account? ",
            style: TextStyles.font13GreyRegular,
          ),
          TextSpan(text: "Sign Up", style: TextStyles.font13blueSemiBold),
        ],
      ),
    );
  }
}
