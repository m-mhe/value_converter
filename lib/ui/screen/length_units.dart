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
                      cursorColor: AppColor.primaryColor,
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
                      cursorColor: AppColor.primaryColor,
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
                      cursorColor: AppColor.primaryColor,
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
                      cursorColor: AppColor.primaryColor,
                      controller: _deciMTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onDeciMChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Decimeter value',
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
                      cursorColor: AppColor.primaryColor,
                      controller: _metreTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onMetreChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Metre value',
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
                      cursorColor: AppColor.primaryColor,
                      controller: _inchTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onInchChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Inch value',
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
                      cursorColor: AppColor.primaryColor,
                      controller: _ftTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onFtChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Foot value',
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
                      cursorColor: AppColor.primaryColor,
                      controller: _ydTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onYdChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Yard value',
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
                      cursorColor: AppColor.primaryColor,
                      controller: _mileTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onMileChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Mile value',
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
                      cursorColor: AppColor.primaryColor,
                      controller: _kmTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onKmChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Kilometer value',
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
                      cursorColor: AppColor.primaryColor,
                      controller: _nmTEC,
                      keyboardType: TextInputType.number,
                      onChanged: _onNmChange,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                        hintText: 'Enter Nautical Mile value',
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
  final TextEditingController _deciMTEC = TextEditingController();
  final TextEditingController _metreTEC = TextEditingController();
  final TextEditingController _inchTEC = TextEditingController();
  final TextEditingController _ftTEC = TextEditingController();
  final TextEditingController _ydTEC = TextEditingController();
  final TextEditingController _mileTEC = TextEditingController();
  final TextEditingController _kmTEC = TextEditingController();
  final TextEditingController _nmTEC = TextEditingController();

  //--------------------------------------Function--------------------------------------
  void _onMicroMChange(v) {
    _milliMTEC.text = '${(double.parse(v) / 1000)}';
    _centiMTEC.text = '${(double.parse(v) / 10000)}';
    _deciMTEC.text = '${(double.parse(v) / 100000)}';
    _metreTEC.text = '${(double.parse(v) / 1000000)}';
    _inchTEC.text = '${(double.parse(v) / 25400)}';
    _ftTEC.text = '${(double.parse(v) / 304800)}';
    _ydTEC.text = '${(double.parse(v) / 914400)}';
    _mileTEC.text = '${(double.parse(v) / 1609344000)}';
    _kmTEC.text = '${(double.parse(v) / 1000000000)}';
    _nmTEC.text = '${(double.parse(v) / 1852000000)}';
  }

  void _onMilliMChange(v) {
    _microMTEC.text = '${double.parse(v) * 1000}';
    _centiMTEC.text = '${(double.parse(v) / 10)}';
    _deciMTEC.text = '${(double.parse(v) / 100)}';
    _metreTEC.text = '${(double.parse(v) / 1000)}';
    _inchTEC.text = '${(double.parse(v) / 25.4)}';
    _ftTEC.text = '${(double.parse(v) / 304.8)}';
    _ydTEC.text = '${(double.parse(v) / 914.4)}';
    _mileTEC.text = '${(double.parse(v) / 1609344)}';
    _kmTEC.text = '${(double.parse(v) / 1000000)}';
    _nmTEC.text = '${(double.parse(v) / 1852000)}';
  }

  void _onCentiMChange(v) {
    _microMTEC.text = '${(double.parse(v) * 10000)}';
    _milliMTEC.text = '${(double.parse(v) * 10)}';
    _deciMTEC.text = '${(double.parse(v) / 10)}';
    _metreTEC.text = '${(double.parse(v) / 100)}';
    _inchTEC.text = '${(double.parse(v) / 2.54)}';
    _ftTEC.text = '${(double.parse(v) / 30.48)}';
    _ydTEC.text = '${(double.parse(v) / 91.44)}';
    _mileTEC.text = '${(double.parse(v) / 160934.4)}';
    _kmTEC.text = '${(double.parse(v) / 100000)}';
    _nmTEC.text = '${(double.parse(v) / 185200)}';
  }

  void _onDeciMChange(v) {
    _microMTEC.text = '${(double.parse(v) * 100000)}';
    _milliMTEC.text = '${(double.parse(v) * 100)}';
    _centiMTEC.text = '${(double.parse(v) * 10)}';
    _metreTEC.text = '${(double.parse(v) / 10)}';
    _inchTEC.text = '${(double.parse(v) / 0.254)}';
    _ftTEC.text = '${(double.parse(v) / 3.048)}';
    _ydTEC.text = '${(double.parse(v) / 9.144)}';
    _mileTEC.text = '${(double.parse(v) / 16093.44)}';
    _kmTEC.text = '${(double.parse(v) / 10000)}';
    _nmTEC.text = '${(double.parse(v) / 18520)}';
  }

  void _onMetreChange(v) {
    _microMTEC.text = '${(double.parse(v) * 1000000)}';
    _milliMTEC.text = '${(double.parse(v) * 1000)}';
    _centiMTEC.text = '${(double.parse(v) * 100)}';
    _deciMTEC.text = '${(double.parse(v) * 10)}';
    _inchTEC.text = '${(double.parse(v) * 39.370079)}';
    _ftTEC.text = '${(double.parse(v) * 3.28084)}';
    _ydTEC.text = '${(double.parse(v) * 1.093613)}';
    _mileTEC.text = '${(double.parse(v) / 1609.344)}';
    _kmTEC.text = '${(double.parse(v) / 1000)}';
    _nmTEC.text = '${(double.parse(v) / 1852)}';
  }

  void _onInchChange(v) {
    _microMTEC.text = '${(double.parse(v) * 25400)}';
    _milliMTEC.text = '${(double.parse(v) * 25.4)}';
    _centiMTEC.text = '${(double.parse(v) * 2.54)}';
    _deciMTEC.text = '${(double.parse(v) * 0.254)}';
    _metreTEC.text = '${(double.parse(v) * 0.0254)}';
    _ftTEC.text = '${(double.parse(v) / 12)}';
    _ydTEC.text = '${(double.parse(v) / 36)}';
    _mileTEC.text = '${(double.parse(v) / 63360)}';
    _kmTEC.text = '${(double.parse(v) * 0.0000254)}';
    _nmTEC.text = '${(double.parse(v) / 72913.3858)}';
  }

  void _onFtChange(v) {
    _microMTEC.text = '${(double.parse(v) * 304800)}';
    _milliMTEC.text = '${(double.parse(v) * 304.8)}';
    _centiMTEC.text = '${(double.parse(v) * 30.48)}';
    _deciMTEC.text = '${(double.parse(v) * 3.048)}';
    _metreTEC.text = '${(double.parse(v) * 0.3048)}';
    _inchTEC.text = '${(double.parse(v) * 12)}';
    _ydTEC.text = '${(double.parse(v) / 3)}';
    _mileTEC.text = '${(double.parse(v) / 5280)}';
    _kmTEC.text = '${(double.parse(v) * 0.0003048)}';
    _nmTEC.text = '${(double.parse(v) / 6076.11549)}';
  }

  void _onYdChange(v) {
    _microMTEC.text = '${(double.parse(v) * 914400)}';
    _milliMTEC.text = '${(double.parse(v) * 914.4)}';
    _centiMTEC.text = '${(double.parse(v) * 91.44)}';
    _deciMTEC.text = '${(double.parse(v) * 9.144)}';
    _metreTEC.text = '${(double.parse(v) * 0.9144)}';
    _inchTEC.text = '${(double.parse(v) * 36)}';
    _ftTEC.text = '${(double.parse(v) * 3)}';
    _mileTEC.text = '${(double.parse(v) / 1760)}';
    _kmTEC.text = '${(double.parse(v) * 0.0009144)}';
    _nmTEC.text = '${(double.parse(v) / 2025.37183)}';
  }

  void _onMileChange(v) {
    _microMTEC.text = '${(double.parse(v) * 1609344000)}';
    _milliMTEC.text = '${(double.parse(v) * 1609344)}';
    _centiMTEC.text = '${(double.parse(v) * 160934.4)}';
    _deciMTEC.text = '${(double.parse(v) * 16093.44)}';
    _metreTEC.text = '${(double.parse(v) * 1609.344)}';
    _inchTEC.text = '${(double.parse(v) * 63360)}';
    _ftTEC.text = '${(double.parse(v) * 5280)}';
    _ydTEC.text = '${(double.parse(v) * 1760)}';
    _kmTEC.text = '${(double.parse(v) * 1.609344)}';
    _nmTEC.text = '${(double.parse(v) / 1.150779)}';
  }

  void _onKmChange(v) {
    _microMTEC.text = '${(double.parse(v) * 1000000000)}';
    _milliMTEC.text = '${(double.parse(v) * 1000000)}';
    _centiMTEC.text = '${(double.parse(v) * 100000)}';
    _deciMTEC.text = '${(double.parse(v) * 10000)}';
    _metreTEC.text = '${(double.parse(v) * 1000)}';
    _inchTEC.text = '${(double.parse(v) * 39370.0787)}';
    _ftTEC.text = '${(double.parse(v) * 3280.8399)}';
    _ydTEC.text = '${(double.parse(v) * 1093.6133)}';
    _mileTEC.text = '${(double.parse(v) / 1.609344)}';
    _nmTEC.text = '${(double.parse(v) / 1.852)}';
  }

  void _onNmChange(v) {
    _microMTEC.text = '${(double.parse(v) * 10000)}';
    _milliMTEC.text = '${(double.parse(v) * 10)}';
    _centiMTEC.text = '${(double.parse(v) / 10)}';
    _deciMTEC.text = '${(double.parse(v) / 10000)}';
    _metreTEC.text = '${(double.parse(v) / 10000)}';
    _inchTEC.text = '${(double.parse(v) / 10000)}';
    _ftTEC.text = '${(double.parse(v) / 10000)}';
    _ydTEC.text = '${(double.parse(v) / 10000)}';
    _mileTEC.text = '${(double.parse(v) / 10000)}';
    _kmTEC.text = '${(double.parse(v) / 10000)}';
  }
}
