import 'package:flutter/material.dart';
import '../../widget/app_color.dart';

class NetScreen extends StatelessWidget {
  NetScreen({super.key});

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
                      controller: _netTEC,
                      enabled: false,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Net value', label: Icon(Icons.join_left, color: AppColor.primaryColor,), suffixText: 'Net',),
                    ),
                  ),
                ),
              ),
              const SizedBox(
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
                      controller: _totalTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onTotalChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Total value', label: Row(
                          children: [
                            Icon(Icons.join_full, color: AppColor.primaryColor,),
                            SizedBox(width: 5,),
                            Text('Enter Total value...',),
                          ],
                        ), suffixText: 'Total',),
                    ),
                  ),
                ),
              ),
              const SizedBox(
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
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Percentage', label: Row(
                          children: [
                            Icon(Icons.percent, color: AppColor.primaryColor,),
                            SizedBox(width: 5,),
                            Text('Set Percentage...',),
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
  void _onPercentChange(v) {
    _netTEC.text =
    '${((double.tryParse(_totalTEC.text)??0)/100) * double.parse(v)}';
  }
  void _onTotalChange(v) {
    _netTEC.text = '${((double.parse(v))/100) * (double.tryParse(_percentageTEC.text)??0)}';
  }
}
