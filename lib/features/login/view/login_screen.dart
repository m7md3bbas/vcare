import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vcare/core/theming/colors_manager.dart';
import 'package:vcare/core/theming/text_styles.dart';
import 'package:vcare/core/widget/already_have_account.dart';
import 'package:vcare/core/widget/app_text_button.dart';
import 'package:vcare/core/widget/terms_and_conditions.dart';
import 'package:vcare/features/login/data/model/login_request_body.dart';
import 'package:vcare/features/login/logic/cubit/login_cubit.dart';
import 'package:vcare/features/login/view/widget/email_and_password.dart';
import 'package:vcare/features/login/view/widget/login_bloc_listener.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

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

                Column(
                  children: [
                    EmailAndPassword(autovalidateMode: autovalidateMode),

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
                      onPress: () => validateThenDoLogin(context),
                      backgroundColor: ColorsManager.mainBlue,
                    ),
                    SizedBox(height: 24.h),
                    const TermsAndConditions(),
                    SizedBox(height: 60.h),
                    const AlreadyHaveAccount(),
                    LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    if (loginCubit.formKey.currentState!.validate()) {
      loginCubit.emitloginStates(
        LoginRequestBody(
          email: loginCubit.emailController.text,
          password: loginCubit.passwordController.text,
        ),
      );
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.always;
      });
    }
  }
}
