import 'package:flutter/material.dart';
import 'package:ostad_14_ecommerce_project_crafty_bay/app/app_colors.dart';

import '../widgets/app_logo.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static const String name = '/sing-in';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const .all(24),
          child: Column(
            children: [
              const SizedBox(height: 80),
              AppLogo(width: 100),
              const SizedBox(height: 16),
              Text('Welcome Back', style: textTheme.titleLarge),
              const SizedBox(height: 6),
              Text('Enter your email address', style: textTheme.labelLarge),
              const SizedBox(height: 16),
              TextFormField(),
              const SizedBox(height: 8),
              TextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
