import 'package:flutter/material.dart';
import 'package:value_converter/ui/screen/length_units.dart';
import 'package:value_converter/ui/screen/temperature_converter_screen.dart';
import 'package:value_converter/ui/widget/app_color.dart';
import 'package:value_converter/ui/widget/percentage_screen_bottom_navigation_bar.dart';

class CommonAppDrawer extends StatelessWidget {
  const CommonAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColor.secondaryColor,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const SizedBox(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  child: Center(
                    child: Text(
                      'Value Converter',
                      style: TextStyle(
                          color: AppColor.accentColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TemperatureConverterScreen()));
              },
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Temperature Converter',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PercentageScreenBottomNavigationBar(),
                  ),
                );
              },
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Percentage Calculator',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Currency Converter',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LengthUnits(),
                  ),
                );
              },
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Length Units',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Area Units',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Weight Units',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Volume Units',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Cooking Units',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Work Units',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Force Units',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Power Units',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Binary',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Data Units',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Speed Units',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Time Units',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
