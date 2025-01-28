import 'package:flutter/material.dart';

extension ThemeModeExt on String{
  ThemeMode getThemeMode(){
    if(toLowerCase() ==ThemeMode.light.name.toLowerCase()){
      return ThemeMode.light;
    }
    else if(toLowerCase() ==ThemeMode.dark.name.toLowerCase()){
      return ThemeMode.dark;
    }
    else{
      return ThemeMode.system;
    }
  }
}