import 'package:flutter/cupertino.dart';

class ThemeProvider extends ChangeNotifier{
  bool _isDark = false;

  ///getFromPrefs

  void changeThemeValue(bool newValue){
    _isDark = newValue;
    ///set in prefs
    notifyListeners();
  }

  bool getThemeValue() => _isDark;

}