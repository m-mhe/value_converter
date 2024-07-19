import 'package:flutter/material.dart';
import 'package:value_converter/ui/widget/common_app_drawer.dart';
import 'package:value_converter/ui/widget/common_app_bar.dart';

import '../../widget/app_color.dart';

class TotalScreen extends StatelessWidget {
  TotalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                      controller: _totalTEC,
                      enabled: false,
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        hintText: 'Enter Total value', label: Icon(Icons.join_full, color: AppColor.primaryColor,), suffixText: 'Total',),
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
                      controller: _netTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onNetChange,
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        hintText: 'Enter Net value', label: Row(
                          children: [
                            Icon(Icons.join_left, color: AppColor.primaryColor,),
                            SizedBox(width: 5,),
                            Text('Enter Net value...',),
                          ],
                        ), suffixText: 'Net',),
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
                      controller: _percentageTEC,
                      enabled: true,
                      keyboardType: TextInputType.number,
                      onChanged: _onPercentChange,
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        hintText: 'Percentage', label: Row(
                          children: [
                            Icon(Icons.percent, color: AppColor.primaryColor,),
                            SizedBox(width: 5,),
                            Text('Enter Percentage...',),
                          ],
                        ), suffixText: '%',),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }

  //--------------------------------------Variable--------------------------------------
  final TextEditingController _percentageTEC = TextEditingController();
  final TextEditingController _netTEC = TextEditingController();
  final TextEditingController _totalTEC = TextEditingController();

  //--------------------------------------Function--------------------------------------
  void _onNetChange(v) {
    _totalTEC.text =
    '${(double.parse(v)/(double.tryParse(_percentageTEC.text)??0)) * 100}';
  }
  void _onPercentChange(v) {
    _totalTEC.text = '${((double.tryParse(_netTEC.text)??0)/(double.parse(v))) * 100}';
  }
}
