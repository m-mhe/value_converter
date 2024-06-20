import 'package:flutter/material.dart';

ThemeMode appTheme({bool? setLightTheme}){
  if(setLightTheme == null){
    return ThemeMode.system;
  }else if(setLightTheme == false){
    return ThemeMode.dark;
  }else{
    return ThemeMode.light;
  }
}