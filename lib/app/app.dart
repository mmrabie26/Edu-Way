import 'package:eduway/app/app_router.dart';
import 'package:eduway/core/constants/app_strings.dart';
import 'package:eduway/core/theme/light_theme.dart';
import 'package:eduway/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale('en'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: AppString.appName,
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      routerConfig: AppRouter.router,
    );
  }
}
