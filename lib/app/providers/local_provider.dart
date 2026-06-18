import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier{
  Locale _currentLocal = Locale('en');

  final List<Locale> _locals = [Locale('en'), Locale('bn')];

  List<Locale> get supportedLocales => _locals;

  Locale get currentLocal  =>_currentLocal;

  void changeLocal  (Locale local){
    _currentLocal = local;
    _saveLocal(local);
    notifyListeners();
  }

  Future<void> _saveLocal (Locale local) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("Local", local.languageCode);
  }

  Future<void> setDefaultLocal () async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? local = sharedPreferences.getString("local");
    if (local != null){
      _currentLocal = Locale(local);
    }
  }
}