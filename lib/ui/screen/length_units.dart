import 'package:flutter/material.dart';
import 'package:value_converter/ui/widget/common_app_drawer.dart';
import 'package:value_converter/ui/widget/common_app_bar.dart';
import '../widget/app_color.dart';

class LengthUnits extends StatelessWidget {
  LengthUnits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        screenTitle: 'Length Units',
        child: const Icon(Icons.calculate),
      ),
      endDrawer: const CommonAppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width / 25,
              vertical: MediaQuery.sizeOf(context).width / 25),
          child: Column(
            children: [
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _microMTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onMicroMChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Micrometre value',
                        labelText: 'um',
                        suffixText: 'um',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _milliMTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onMilliMChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Millimetre value',
                        labelText: 'mm',
                        suffixText: 'mm',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _centiMTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onCentiMChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Centimetre value',
                        labelText: 'cm',
                        suffixText: 'cm',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _milliMTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onMilliMChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Millimetre value',
                        labelText: 'dm',
                        suffixText: 'dm',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _milliMTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onMilliMChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Millimetre value',
                        labelText: 'm',
                        suffixText: 'm',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _milliMTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onMilliMChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Millimetre value',
                        labelText: 'inch',
                        suffixText: 'inch',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _milliMTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onMilliMChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Millimetre value',
                        labelText: 'inch(1/n)',
                        suffixText: 'inch(1/n)',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _milliMTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onMilliMChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Millimetre value',
                        labelText: 'ft',
                        suffixText: 'ft',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _milliMTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onMilliMChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Millimetre value',
                        labelText: 'ft in',
                        suffixText: 'ft in',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _milliMTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onMilliMChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Millimetre value',
                        labelText: 'yd',
                        suffixText: 'yd',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _milliMTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onMilliMChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Millimetre value',
                        labelText: 'mile',
                        suffixText: 'mile',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _milliMTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onMilliMChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Millimetre value',
                        labelText: 'km',
                        suffixText: 'km',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 17),
                    child: TextField(
                      controller: _milliMTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onMilliMChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Millimetre value',
                        labelText: 'NM',
                        suffixText: 'NM',
                      ),
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
  final TextEditingController _microMTEC = TextEditingController();
  final TextEditingController _milliMTEC = TextEditingController();
  final TextEditingController _centiMTEC = TextEditingController();

  //--------------------------------------Function--------------------------------------
  void _onMicroMChange(v) {
    _milliMTEC.text = '${(double.parse(v) / 1000)}';
    _centiMTEC.text = '${(double.parse(v) / 10000)}';
  }

  void _onMilliMChange(v) {
    _microMTEC.text = '${double.parse(v) * 1000}';
    _centiMTEC.text = '${(double.parse(v) / 10)}';
  }

  void _onCentiMChange(v) {
    _microMTEC.text = '${(double.parse(v) * 10000)}';
    _milliMTEC.text = '${(double.parse(v) * 10)}';
  }
}
