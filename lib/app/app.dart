import 'package:eduway/app/app_router.dart';
import 'package:eduway/core/constants/app_strings.dart';
import 'package:eduway/core/theme/light_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
          title: AppString.appName,
          debugShowCheckedModeBanner: false,
          theme: lightTheme(),
          routerConfig: AppRouter.router,
        );
  }
}
