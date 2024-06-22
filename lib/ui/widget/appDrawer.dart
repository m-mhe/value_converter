import 'package:flutter/material.dart';
import 'package:value_converter/ui/screen/temperature_converter_screen.dart';
import 'package:value_converter/ui/widget/app_color.dart';
import 'package:value_converter/ui/widget/percentage_screen_bottom_navigation_bar.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColor.secondaryColor,
              ),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);Navigator.pop(context);
                },
                child: Container(
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
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TemperatureConverterScreen()));
              },
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Temperature Converter',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PercentageScreenBottomNavigationBar()));
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
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            InkWell(
              onTap: (){},
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
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            InkWell(
              onTap: (){},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Length Unit',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            InkWell(
              onTap: (){},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Area Unit',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            InkWell(
              onTap: (){},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Weight Unit',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            InkWell(
              onTap: (){},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Volume Unit',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            InkWell(
              onTap: (){},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Cooking Unit',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            InkWell(
              onTap: (){},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Work Unit',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            InkWell(
              onTap: (){},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Force Unit',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            InkWell(
              onTap: (){},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Power Unit',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            InkWell(
              onTap: (){},
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
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            InkWell(
              onTap: (){},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Data Unit',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            InkWell(
              onTap: (){},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Speed Unit',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            InkWell(
              onTap: (){},
              child: Container(
                color: AppColor.primaryColor,
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Time Unit',
                    style: TextStyle(
                        color: AppColor.thirdColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }
}
