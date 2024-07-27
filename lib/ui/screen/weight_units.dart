import 'package:flutter/material.dart';

import '../widget/app_color.dart';
import '../widget/common_app_bar.dart';
import '../widget/common_app_drawer.dart';

class WeightUnits extends StatefulWidget {
  const WeightUnits({super.key});

  @override
  State<WeightUnits> createState() => _WeightUnitsState();
}

class _WeightUnitsState extends State<WeightUnits> {
  @override
  void initState() {
    super.initState();
    _oneCurrentStateForTF = 5;
    _twoCurrentStateForTF = 3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: commonAppBar(
          screenTitle: 'Weight Units',
          child: const Icon(Icons.calculate),
        ),
        endDrawer: const CommonAppDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width / 25,
              vertical: MediaQuery.sizeOf(context).height / 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  color: AppColor.accentColor,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 25,
                        vertical: 40),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: _onChangeOne,
                          controller: _oneTEC,
                          keyboardType: TextInputType.number,
                          cursorColor: AppColor.primaryColor,
                          style: const TextStyle(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                              fillColor: AppColor.thirdColor,
                              suffixText: _oneUnitsForTF[_oneCurrentStateForTF],
                              labelText:
                              'Enter ${_oneUnitsForTF[_oneCurrentStateForTF]} value'),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TextField(
                          onChanged: _onChangeTwo,
                          controller: _twoTEC,
                          keyboardType: TextInputType.number,
                          cursorColor: AppColor.primaryColor,
                          style: const TextStyle(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                              fillColor: AppColor.thirdColor,
                              suffixText: _twoUnitsForTF[_twoCurrentStateForTF],
                              labelText:
                              'Enter ${_twoUnitsForTF[_twoCurrentStateForTF]} value'),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 3,
                  color: AppColor.secondaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 25,
                        vertical: 22.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownMenu(
                            textStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                            initialSelection: _oneCurrentStateForTF,
                            onSelected: (v) {
                              _oneTEC.clear();
                              _twoTEC.clear();
                              _oneCurrentStateForTF = v!;
                              setState(() {});
                            },
                            width: 100,
                            menuHeight: 150,
                            inputDecorationTheme: InputDecorationTheme(
                                filled: true,
                                fillColor: AppColor.accentColor,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.secondaryColor))),
                            label: Text(
                              "Select an Unit",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: AppColor.secondaryColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            dropdownMenuEntries: [
                              DropdownMenuEntry(
                                  value: 0, label: _oneUnitsForTF[0]),
                              DropdownMenuEntry(
                                  value: 1, label: _oneUnitsForTF[1]),
                              DropdownMenuEntry(
                                  value: 2, label: _oneUnitsForTF[2]),
                              DropdownMenuEntry(
                                  value: 3, label: _oneUnitsForTF[3]),
                              DropdownMenuEntry(
                                  value: 4, label: _oneUnitsForTF[4]),
                              DropdownMenuEntry(
                                  value: 5, label: _oneUnitsForTF[5]),
                              DropdownMenuEntry(
                                  value: 6, label: _oneUnitsForTF[6]),
                              DropdownMenuEntry(
                                  value: 7, label: _oneUnitsForTF[7]),
                              DropdownMenuEntry(
                                  value: 8, label: _oneUnitsForTF[8]),
                              DropdownMenuEntry(
                                  value: 9, label: _oneUnitsForTF[9]),
                              DropdownMenuEntry(
                                  value: 10, label: _oneUnitsForTF[10]),
                              DropdownMenuEntry(
                                  value: 11, label: _oneUnitsForTF[11]),
                            ]),
                        const Icon(
                          Icons.compare_arrows,
                          color: AppColor.accentColor,
                        ),
                        DropdownMenu(
                            textStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                            initialSelection: _twoCurrentStateForTF,
                            onSelected: (v) {
                              _oneTEC.clear();
                              _twoTEC.clear();
                              _twoCurrentStateForTF = v!;
                              setState(() {});
                            },
                            width: 100,
                            menuHeight: 150,
                            inputDecorationTheme: const InputDecorationTheme(
                                filled: true,
                                fillColor: AppColor.accentColor,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.secondaryColor))),
                            label: const Text(
                              "Select an Unit",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: AppColor.secondaryColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            dropdownMenuEntries: [
                              DropdownMenuEntry(
                                  value: 0, label: _twoUnitsForTF[0]),
                              DropdownMenuEntry(
                                  value: 1, label: _twoUnitsForTF[1]),
                              DropdownMenuEntry(
                                  value: 2, label: _twoUnitsForTF[2]),
                              DropdownMenuEntry(
                                  value: 3, label: _twoUnitsForTF[3]),
                              DropdownMenuEntry(
                                  value: 4, label: _twoUnitsForTF[4]),
                              DropdownMenuEntry(
                                  value: 5, label: _twoUnitsForTF[5]),
                              DropdownMenuEntry(
                                  value: 6, label: _twoUnitsForTF[6]),
                              DropdownMenuEntry(
                                  value: 7, label: _twoUnitsForTF[7]),
                              DropdownMenuEntry(
                                  value: 8, label: _twoUnitsForTF[8]),
                              DropdownMenuEntry(
                                  value: 9, label: _twoUnitsForTF[9]),
                              DropdownMenuEntry(
                                  value: 10, label: _twoUnitsForTF[10]),
                              DropdownMenuEntry(
                                  value: 11, label: _twoUnitsForTF[11]),
                            ]),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  //=======================================VARIABLES=======================================
  final TextEditingController _oneTEC = TextEditingController();
  final TextEditingController _twoTEC = TextEditingController();
  final List<String> _oneUnitsForTF = [
    'mm²',
    'cm²',
    'dm²',
    'm²',
    'in²',
    'ft²',
    'yd²',
    'a',
    'ha',
    'km²',
    'acre',
    'mile²'
  ];
  final List<String> _twoUnitsForTF = [
    'mm²',
    'cm²',
    'dm²',
    'm²',
    'in²',
    'ft²',
    'yd²',
    'a',
    'ha',
    'km²',
    'acre',
    'mile²'
  ];
  int _oneCurrentStateForTF = 0;
  int _twoCurrentStateForTF = 0;

  //=======================================FUNCTIONS=======================================
  void _onChangeOne(String v) {
  }

  void _onChangeTwo(v) {
  }
}
