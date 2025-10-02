import 'package:flutter/material.dart';
import 'package:vcare/core/theming/colors_manager.dart';
import 'package:vcare/core/theming/text_styles.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialChar;
  final bool hasMinLength;
  const PasswordValidation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialChar,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least 1 lowercase letter", hasLowerCase),
        SizedBox(height: 2),
        buildValidationRow("At least 1 uppercase letter", hasUpperCase),
        SizedBox(height: 2),
        buildValidationRow("At least 6 characters", hasMinLength),
        SizedBox(height: 2),
        buildValidationRow("At least 1 number", hasNumber),
        SizedBox(height: 2),
        buildValidationRow("At least 1 special character", hasSpecialChar),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(backgroundColor: Colors.grey, radius: 2.5),
        SizedBox(width: 6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? Colors.grey : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
