import 'package:flutter/material.dart';

import '../../../../l10n/app_localizations.dart';
import '../../../shared/presentation/presentation/main_nav_holder_screen.dart';
import '../widgets/app_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  static const String name = '/splash';
}



class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, MainNavHolderScreen.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          // ThemeToggle(),
          Center(child: AppLogo()),
          Spacer(),
          CircularProgressIndicator(),
          SizedBox(height: 20),
          Text('${AppLocalizations.of(context)?.version} 1.0.0'),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
