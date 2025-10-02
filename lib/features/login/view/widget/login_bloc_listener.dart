import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vcare/core/healper/extentions.dart';
import 'package:vcare/core/routing/routing_names.dart';
import 'package:vcare/core/theming/colors_manager.dart';
import 'package:vcare/core/theming/text_styles.dart';
import 'package:vcare/features/login/logic/cubit/login_cubit.dart';
import 'package:vcare/features/login/logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (prev, current) =>
          current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(color: ColorsManager.mainBlue),
            ),
          ),
          success: (data) {
            context.pop();
            context.pushNamed(routeName: RoutingNames.home);
          },
          failure: (e) {
            setupErrorState(context, e);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String e) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(e.toString(), style: TextStyles.font15DarkBlueMeduim),
        icon: Icon(Icons.error, color: Colors.red, size: 32),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text("Ok", style: TextStyles.font14BlueSemiBold),
          ),
        ],
      ),
    );
  }
}
