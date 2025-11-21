
import 'package:eduway/core/constants/app_strings.dart';
import 'package:eduway/core/theme/light_theme.dart';
import 'package:eduway/feature/authentication/view/login_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString.appName,
      theme: lightTheme(),
      home:  LoginView(),
    );
  }
}
