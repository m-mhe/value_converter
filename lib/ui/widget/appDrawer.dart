import 'package:flutter/material.dart';
import 'package:value_converter/ui/screen/temperature_converter_screen.dart';
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
                color: Color(0xff274257),
              ),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);Navigator.pop(context);
                },
                child: Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  child: const Center(
                    child: Text(
                      'Value Converter',
                      style: TextStyle(
                          color: Color(0xffC6CDD2),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Temperature Converter',
                    style: TextStyle(
                        color: Color(0xff274257),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Percentage Calculator',
                    style: TextStyle(
                        color: Color(0xff274257),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Currency Converter',
                    style: TextStyle(
                        color: Color(0xff274257),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Length Unit',
                    style: TextStyle(
                        color: Color(0xff274257),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Area Unit',
                    style: TextStyle(
                        color: Color(0xff274257),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Weight Unit',
                    style: TextStyle(
                        color: Color(0xff274257),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Volume Unit',
                    style: TextStyle(
                        color: Color(0xff274257),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Cooking Unit',
                    style: TextStyle(
                        color: Color(0xff274257),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Work Unit',
                    style: TextStyle(
                        color: Color(0xff274257),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Force Unit',
                    style: TextStyle(
                        color: Color(0xff274257),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Power Unit',
                    style: TextStyle(
                        color: Color(0xff274257),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Binary',
                    style: TextStyle(
                        color: Color(0xff274257),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Data Unit',
                    style: TextStyle(
                        color: Color(0xff274257),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Speed Unit',
                    style: TextStyle(
                        color: Color(0xff274257),
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
                color: Color(0xffC6CDD2),
                height: 50,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'Time unit',
                    style: TextStyle(
                        color: Color(0xff274257),
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
