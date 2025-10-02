import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vcare/core/healper/app_regx.dart';
import 'package:vcare/core/widget/app_text_form_field.dart';
import 'package:vcare/features/login/logic/cubit/login_cubit.dart';
import 'package:vcare/features/login/view/widget/Password_validation.dart';

class EmailAndPassword extends StatefulWidget {
  final AutovalidateMode? autovalidateMode;
  const EmailAndPassword({super.key, this.autovalidateMode});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  var isObsecure = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;
  late final TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordConterollerListener();
  }

  void setupPasswordConterollerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegx.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegx.hasUpperCase(passwordController.text);
        hasNumber = AppRegx.hasNumber(passwordController.text);
        hasSpecialChar = AppRegx.hasSpecialChar(passwordController.text);
        hasMinLength = AppRegx.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      autovalidateMode: widget.autovalidateMode,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: "Email",
            validator: (vlaue) {
              if (vlaue == null ||
                  vlaue.isEmpty ||
                  !AppRegx.isEmailValid(vlaue)) {
                return "Please enter your email";
              }
            },
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 18.h),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            validator: (vlaue) {
              if (vlaue == null ||
                  vlaue.isEmpty ||
                  !AppRegx.isPasswordValid(vlaue)) {
                return "Please enter your password";
              }
            },
            keyboardType: TextInputType.visiblePassword,
            hintText: "Password",
            obscureText: isObsecure,
            suffuixIcon: GestureDetector(
              child: Icon(isObsecure ? Icons.visibility_off : Icons.visibility),
              onTap: () {
                setState(() {
                  isObsecure = !isObsecure;
                });
              },
            ),
          ),
          SizedBox(height: 18.h),
          PasswordValidation(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasNumber: hasNumber,
            hasSpecialChar: hasSpecialChar,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }
}
