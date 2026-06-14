import 'package:flutter/material.dart';
import 'package:ostad_14_ecommerce_project_crafty_bay/app/providers/theme_mode_providers.dart';
import 'package:provider/provider.dart';

import '../../../shared/presentation/widgets/theme_toggle_button.dart';
import '../widgets/app_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  static const String name = '/splash';
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Spacer(),
          // ThemeToggle(),
          Center(
            child: AppLogo(),
          ),
          Spacer(),
          CircularProgressIndicator(),
          SizedBox(height: 20,),
          Text('version 1.0.0'),
          const SizedBox(height: 16,),
        ],
      ),
    );
  }
}


