import 'package:flutter/material.dart';

AppBar commonAppBar({required String screenTitle, required Widget child,}){
  return AppBar(
    leading: child,
    title: Text(screenTitle),
  );
}