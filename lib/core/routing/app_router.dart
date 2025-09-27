import 'package:flutter/material.dart';
import 'package:vcare/core/routing/routing_names.dart';
import 'package:vcare/features/home/view/home_screen.dart';
import 'package:vcare/features/onboarding/view/onboarding_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutingNames.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RoutingNames.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
