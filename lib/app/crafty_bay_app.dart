import 'package:flutter/material.dart';
import 'package:ostad_14_ecommerce_project_crafty_bay/app/app_theme.dart';

import '../features/auth/presentation/screens/splash_screen.dart';
import 'routes.dart';


class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crafty Bay',
      initialRoute: SplashScreen.name,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
