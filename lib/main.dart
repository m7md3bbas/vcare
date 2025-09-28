import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vcare/core/routing/app_router.dart';
import 'package:vcare/doc_app.dart';
import 'package:vcare/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(DocApp(appRouter: AppRouter()));
}
