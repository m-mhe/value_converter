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
                              hintText:
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
                              hintText:
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
                            textStyle: const TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w600),
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
                              DropdownMenuEntry(
                                  value: 12, label: _oneUnitsForTF[12]),
                              DropdownMenuEntry(
                                  value: 13, label: _oneUnitsForTF[13]),
                            ]),
                        const Icon(
                          Icons.compare_arrows,
                          color: AppColor.accentColor,
                        ),
                        DropdownMenu(
                            textStyle: const TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w600),
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
                              DropdownMenuEntry(
                                  value: 12, label: _twoUnitsForTF[12]),
                              DropdownMenuEntry(
                                  value: 13, label: _twoUnitsForTF[13]),
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
    'μg',
    'mg',
    'g',
    'kg',
    'lb',
    'oz',
    'oz t',
    'grain',
    'tonne',
    'ton(uk)',
    'ton(us)',
    'stone(uk)',
    'cwt',
    'carat',
  ];
  final List<String> _twoUnitsForTF = [
    'μg',
    'mg',
    'g',
    'kg',
    'lb',
    'oz',
    'oz t',
    'grain',
    'tonne',
    'ton(uk)',
    'ton(us)',
    'stone(uk)',
    'cwt',
    'carat',
  ];
  int _oneCurrentStateForTF = 0;
  int _twoCurrentStateForTF = 0;

  //=======================================FUNCTIONS=======================================
  void _onChangeOne(String v) {
    switch (_oneCurrentStateForTF) {
      case (0):
        {
          switch (_twoCurrentStateForTF) {
            case (0):
              {
                _twoTEC.text = v;
                break;
              }
            case (1):
              {
                _twoTEC.text = '${double.parse(v) * 0.001}';
                break;
              }
            case (2):
              {
                _twoTEC.text = '${double.parse(v) * 0.000001}';
                break;
              }
            case (3):
              {
                _twoTEC.text = '${double.parse(v) * 0.000000001}';
                break;
              }
            case (4):
              {
                _twoTEC.text = '${double.parse(v) * 0.0000000022046226218487757}';
                break;
              }
            case (5):
              {
                _twoTEC.text = '${double.parse(v) * 0.00000003527396195}';
                break;
              }
            case (6):
              {
                _twoTEC.text = '${double.parse(v) * 0.00000003215074657}';
                break;
              }
            case (7):
              {
                _twoTEC.text = '${double.parse(v) * 0.00001543235835294143}';
                break;
              }
            case (8):
              {
                _twoTEC.text = '${double.parse(v) * 0.000000000001}';
                break;
              }
            case (9):
              {
                _twoTEC.text = '${double.parse(v) * 0.0000000009842065}';
                break;
              }
            case (10):
              {
                _twoTEC.text = '${double.parse(v) * 0.000000000001102311310924198}';
                break;
              }
            case (11):
              {
                _twoTEC.text = '${double.parse(v) * 0.00000000015728647}';
                break;
              }
            case (12):
              {
                _twoTEC.text = '${double.parse(v) * 0.00000000001968415130040558}';
                break;
              }
            case (13):
              {
                _twoTEC.text = '${double.parse(v) * 0.000005}';
                break;
              }
          }
        }
    }
  }

  void _onChangeTwo(v) {}

  @override
  void dispose() {
    _twoTEC.dispose();
    _oneTEC.dispose();
    super.dispose();
  }
}
