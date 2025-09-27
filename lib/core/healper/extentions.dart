import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed({required String routeName, Object? arguments}) =>
      Navigator.of(this).pushNamed(routeName, arguments: arguments);

  Future<dynamic> pushReplacementNamed({
    required String routeName,
    Object? arguments,
  }) => Navigator.of(this).pushReplacementNamed(routeName);

  Future<dynamic> pushNamedAndRemoveUntil({
    required String routeName,
    Object? arguments,
    required RoutePredicate routePredicate,
  }) => Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);

  void pop() => Navigator.of(this).pop();
}
