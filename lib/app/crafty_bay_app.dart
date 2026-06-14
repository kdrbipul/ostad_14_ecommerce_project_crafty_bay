import 'package:flutter/material.dart';
import 'package:ostad_14_ecommerce_project_crafty_bay/app/app_theme.dart';
import 'package:ostad_14_ecommerce_project_crafty_bay/app/providers/theme_mode_providers.dart';
import 'package:provider/provider.dart';

import '../features/auth/presentation/screens/splash_screen.dart';
import 'routes.dart';


class CraftyBayApp extends StatefulWidget {
  const CraftyBayApp({super.key});

  @override
  State<CraftyBayApp> createState() => _CraftyBayAppState();
}

class _CraftyBayAppState extends State<CraftyBayApp> {

  final ThemeModeProvider _themeModeProvider =ThemeModeProvider();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _themeModeProvider)
      ],
      child: Consumer<ThemeModeProvider>(
        builder: (context, themeModeProvider, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Crafty Bay',
            initialRoute: SplashScreen.name,
            onGenerateRoute: AppRoutes.onGenerateRoute,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeModeProvider.themeMode,
          );
        }
      ),
    );
  }
}
