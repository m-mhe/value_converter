import 'package:flutter/material.dart';
import 'package:value_converter/ui/screen/home_navigator_screen.dart';
import 'package:value_converter/ui/widget/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: appTheme(setLightTheme: false),
      theme: lightTheme(),
      darkTheme: darkTheme(),
      title: 'Value Converter',
      home: HomeNavigatorScreen(),
    );
  }

  ThemeData darkTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xff274257),
        foregroundColor: Color(0xffC6CDD2),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xffC6CDD2))
      ),
      scaffoldBackgroundColor: Color(0xffC6CDD2),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff274257),
          foregroundColor: Color(0xffC6CDD2),
          textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7)
          )
        )
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Color(0xffC6CDD2),
        labelStyle: TextStyle(
          color: Color(0xff274257),
          fontWeight: FontWeight.w600
        ),
        hintStyle: TextStyle(
            color: Color(0xff274257),
            fontWeight: FontWeight.w500
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Color(0xff8B9DB0), width: 2)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.transparent, width: 1)
        ),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: Color(0xff274257),
        endShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7)
        )
      )
    );
  }
  ThemeData lightTheme() {
    return ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff386286),
            foregroundColor: Color(0xffC6CDD2),
            centerTitle: true,
            titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xffC6CDD2))
        ),
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffC6CDD2),
                foregroundColor: const Color(0xff386286),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)
                )
            )
        )
    );
  }
}
