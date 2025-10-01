import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vcare/core/theming/colors_manager.dart';
import 'package:vcare/core/theming/text_styles.dart';
import 'package:vcare/core/widget/already_have_account.dart';
import 'package:vcare/core/widget/app_text_button.dart';
import 'package:vcare/core/widget/app_text_form_field.dart';
import 'package:vcare/core/widget/terms_and_conditions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  var isObsecure = true;
  final AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: TextStyles.font24BlueBold),
                SizedBox(height: 8.h),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GreyRegular,
                ),
                SizedBox(height: 36.h),
                Form(
                  key: _formKey,
                  autovalidateMode: _autovalidateMode,
                  child: Column(
                    children: [
                      AppTextFormField(hintText: "Email"),
                      SizedBox(height: 18.h),
                      AppTextFormField(
                        hintText: "Password",
                        obscureText: isObsecure,
                        suffuixIcon: GestureDetector(
                          child: Icon(
                            isObsecure
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onTap: () {
                            setState(() {
                              isObsecure = !isObsecure;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyles.font13blueRegular,
                        ),
                      ),
                      SizedBox(height: 24.h),
                      AppTextButton(
                        text: "Login",
                        onPress: () {},
                        backgroundColor: ColorsManager.mainBlue,
                      ),
                      SizedBox(height: 24.h),
                      const TermsAndConditions(),
                      SizedBox(height: 60.h),
                      const AlreadyHaveAccount(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
