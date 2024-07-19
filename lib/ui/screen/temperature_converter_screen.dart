import 'package:flutter/material.dart';
import 'package:value_converter/ui/widget/common_app_drawer.dart';
import 'package:value_converter/ui/widget/common_app_bar.dart';

import '../widget/app_color.dart';

class TemperatureConverterScreen extends StatelessWidget {
  TemperatureConverterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
          screenTitle: 'Temperature Converter', child: Icon(Icons.thermostat)),
      endDrawer: const CommonAppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width / 25,
              vertical: MediaQuery.sizeOf(context).height / 5),
          child: Column(
            children: [
              Container(
                height: 90,
                width: MediaQuery.sizeOf(context).width / 1,
                decoration: BoxDecoration(
                    color: AppColor.accentColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _celTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onCalChange,
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                          hintText: 'Enter Celsius value', labelText: '°C', suffixText: '°C',),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: MediaQuery.sizeOf(context).width / 1,
                decoration: BoxDecoration(
                    color: AppColor.accentColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _fahTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onFahChange,
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                          hintText: 'Enter Fahrenheit value', labelText: '°F', suffixText: '°F',),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: MediaQuery.sizeOf(context).width / 1,
                decoration: BoxDecoration(
                    color: AppColor.accentColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _kelTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onKalChange,
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                          hintText: 'Enter Kelvin value', labelText: '°K', suffixText: '°K',),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //--------------------------------------Variable--------------------------------------
  final TextEditingController _celTEC = TextEditingController();
  final TextEditingController _fahTEC = TextEditingController();
  final TextEditingController _kelTEC = TextEditingController();

  //--------------------------------------Function--------------------------------------
  void _onCalChange(v) {
    _fahTEC.text =
    '${((double.parse(v) * 9 / 5) + 32)}';
    _kelTEC.text = '${(double.parse(v) + 273.15)}';
  }
  void _onFahChange(v) {
    _celTEC.text =
    '${(double.parse(v) - 32) * 5/9}';
    _kelTEC.text = '${(((double.parse(v)- 32) * 5/9) + 273.15)}';
  }
  void _onKalChange(v) {
    _celTEC.text = '${(double.parse(v) - 273.15)}';
    _fahTEC.text =
    '${((double.parse(_celTEC.text) * 9 / 5) + 32)}';
  }
}
