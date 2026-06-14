import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../app/providers/theme_mode_providers.dart';
class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModeProvider>(
        builder: (context, themeModeProvider, _) {
          return DropdownButton<ThemeMode>(
              value: themeModeProvider.themeMode,
              items: [
                DropdownMenuItem(value: ThemeMode.system,child: Text('system')),
                DropdownMenuItem(value: ThemeMode.light,child: Text('Light')),
                DropdownMenuItem(value: ThemeMode.dark,child: Text('Dark')),
              ],
              onChanged: (newMode){
                themeModeProvider.changeThemeMode(newMode!);
              });
        }
    );
  }
}