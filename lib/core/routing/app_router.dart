import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vcare/core/di/dependancy_injection.dart';
import 'package:vcare/core/routing/routing_names.dart';
import 'package:vcare/features/home/view/home_screen.dart';
import 'package:vcare/features/login/logic/cubit/login_cubit.dart';
import 'package:vcare/features/login/view/login_screen.dart';
import 'package:vcare/features/onboarding/view/onboarding_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutingNames.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RoutingNames.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case RoutingNames.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => locator<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
