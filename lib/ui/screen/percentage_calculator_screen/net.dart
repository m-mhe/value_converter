import 'package:flutter/material.dart';
import 'package:value_converter/ui/widget/appDrawer.dart';
import 'package:value_converter/ui/widget/common_app_bar.dart';

import '../../widget/app_color.dart';

class NetScreen extends StatelessWidget {
  NetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width / 25,
              vertical: MediaQuery.sizeOf(context).height / 7),
          child: Column(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height / 7,
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
                      enabled: false,
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        hintText: 'Enter Net value', label: Icon(Icons.join_left, color: AppColor.primaryColor,), suffixText: 'Net',),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height / 7,
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
                      keyboardType: TextInputType.number,
                      onChanged: _onTotalChange,
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
                height: MediaQuery.sizeOf(context).height / 7,
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
                        hintText: 'Percentage', label: Icon(Icons.percent, color: AppColor.primaryColor,), suffixText: '%',),
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
  void _onPercentChange(v) {
    _netTEC.text =
    '${((double.tryParse(_totalTEC.text)??0)/100) * double.parse(v)}';
  }
  void _onTotalChange(v) {
    _netTEC.text = '${((double.parse(v))/100) * (double.tryParse(_percentageTEC.text)??0)}';
  }
}
