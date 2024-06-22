import 'package:flutter/material.dart';
import 'package:value_converter/ui/screen/home_navigator_screen.dart';
import 'package:value_converter/ui/widget/app_color.dart';
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
        backgroundColor: AppColor.secondaryColor,
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: AppColor.primaryColor)
      ),
      scaffoldBackgroundColor: AppColor.primaryColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.thirdColor,
          foregroundColor: AppColor.primaryColor,
          textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7)
          )
        )
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColor.thirdColor,
        labelStyle: TextStyle(
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w600
        ),
        hintStyle: TextStyle(
            color: AppColor.primaryColor,
            fontWeight: FontWeight.w500
        ),
        prefixStyle: TextStyle(
            color: AppColor.primaryColor,
            fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        suffixStyle: TextStyle(
            color: AppColor.primaryColor,
            fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: AppColor.primaryColor, width: 1)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.transparent, width: 1)
        ),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: AppColor.thirdColor,
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
