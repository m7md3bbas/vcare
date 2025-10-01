import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vcare/core/healper/extentions.dart';
import 'package:vcare/core/routing/routing_names.dart';
import 'package:vcare/core/theming/colors_manager.dart';
import 'package:vcare/core/theming/text_styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: WidgetStateProperty.all<Color>(ColorsManager.mainBlue),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        ),
        fixedSize: WidgetStateProperty.all<Size>(Size(340.w, 50.h)),
      ),
      onPressed: () {
        context.pushNamed(routeName: RoutingNames.login);
      },
      child: Text("Get Started", style: TextStyles.font16WhiteMeduim),
    );
  }
}
