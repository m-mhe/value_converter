import 'package:flutter/material.dart';
import 'package:value_converter/ui/widget/app_color.dart';
import 'package:value_converter/ui/widget/common_app_bar.dart';
import 'package:value_converter/ui/widget/common_app_drawer.dart';
import 'dart:math';

class AreaUnits extends StatefulWidget {
  const AreaUnits({super.key});

  @override
  State<StatefulWidget> createState() {
    return AreaUnitsState();
  }
}

class AreaUnitsState extends State<AreaUnits> {
  @override
  void initState() {
    super.initState();
    _oneCurrentStateForTF = 5;
    _twoCurrentStateForTF = 3;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: commonAppBar(
          screenTitle: 'Area Units',
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
                        Icon(
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
    switch (_twoCurrentStateForTF) {
      case (0):
        {
          switch (_oneCurrentStateForTF) {
            case (0):
              {
                _twoTEC.text = v;
                break;
              }
            case (1):
              {
                _twoTEC.text = '${double.parse(v) * 100}';
                break;
              }
            case (2):
              {
                _twoTEC.text = '${double.parse(v) * 10000}';
                break;
              }
            case (3):
              {
                _twoTEC.text = '${double.parse(v) * 1000000}';
                break;
              }
            case (4):
              {
                _twoTEC.text = '${double.parse(v) * 645.16}';
                break;
              }
            case (5):
              {
                _twoTEC.text = '${double.parse(v) * 92903.04}';
                break;
              }
            case (6):
              {
                _twoTEC.text = '${double.parse(v) * 836127.36}';
                break;
              }
            case (7):
              {
                _twoTEC.text = '${double.parse(v) * 1000000000}';
                break;
              }
            case (8):
              {
                _twoTEC.text = '${double.parse(v) * 1.000E+10}';
                break;
              }
            case (9):
              {
                _twoTEC.text = '${double.parse(v) * 1.000E+12}';
                break;
              }
            case (10):
              {
                _twoTEC.text = '${double.parse(v) * 4046856422}';
                break;
              }
            case (11):
              {
                _twoTEC.text = '${double.parse(v) * 2.590E+12}';
                break;
              }
          }
          break;
        }
      case (1):
        {
          switch (_oneCurrentStateForTF) {
            case (0):
              {
                _twoTEC.text = '${double.parse(v)/100}';
                break;
              }
            case (1):
              {
                _twoTEC.text = v;
                break;
              }
            case (2):
              {
                _twoTEC.text = '${double.parse(v) * 100}';
                break;
              }
            case (3):
              {
                _twoTEC.text = '${double.parse(v) * 10000}';
                break;
              }
            case (4):
              {
                _twoTEC.text = '${double.parse(v) * 6.4516}';
                break;
              }
            case (5):
              {
                _twoTEC.text = '${double.parse(v) * 929.0304}';
                break;
              }
            case (6):
              {
                _twoTEC.text = '${double.parse(v) * 8361.2736}';
                break;
              }
            case (7):
              {
                _twoTEC.text = '${double.parse(v) * 1000000}';
                break;
              }
            case (8):
              {
                _twoTEC.text = '${double.parse(v) * 1000000000}';
                break;
              }
            case (9):
              {
                _twoTEC.text = '${double.parse(v) * 1.000E+10}';
                break;
              }
            case (10):
              {
                _twoTEC.text = '${double.parse(v) * 40468564.22}';
                break;
              }
            case (11):
              {
                _twoTEC.text = '${double.parse(v) * 2.590E+10}';
                break;
              }
          }
          break;
        }
      case (2):
        {
          switch (_oneCurrentStateForTF) {
            case (0):
              {
                _twoTEC.text = '${double.parse(v)/10000}';
                break;
              }
            case (1):
              {
                _twoTEC.text = '${double.parse(v)/100}';
                break;
              }
            case (2):
              {
                _twoTEC.text = v;
                break;
              }
            case (3):
              {
                _twoTEC.text = '${double.parse(v) * 100}';
                break;
              }
            case (4):
              {
                _twoTEC.text = '${double.parse(v) / 15.500031}';
                break;
              }
            case (5):
              {
                _twoTEC.text = '${double.parse(v) * 9.290304}';
                break;
              }
            case (6):
              {
                _twoTEC.text = '${double.parse(v) * 83.612736}';
                break;
              }
            case (7):
              {
                _twoTEC.text = '${double.parse(v) * 10000}';
                break;
              }
            case (8):
              {
                _twoTEC.text = '${double.parse(v) * 1000000}';
                break;
              }
            case (9):
              {
                _twoTEC.text = '${double.parse(v) * 1000000000}';
                break;
              }
            case (10):
              {
                _twoTEC.text = '${double.parse(v) * 404685.6422}';
                break;
              }
            case (11):
              {
                _twoTEC.text = '${double.parse(v) * 258998811.0336}';
                break;
              }
          }
          break;
        }
      case (3):
        {
          switch (_oneCurrentStateForTF) {
            case (0):
              {
                _twoTEC.text = '${double.parse(v)/1000000}';
                break;
              }
            case (1):
              {
                _twoTEC.text = '${double.parse(v)/10000}';
                break;
              }
            case (2):
              {
                _twoTEC.text = '${double.parse(v) / 100}';
                break;
              }
            case (3):
              {
                _twoTEC.text = v;
                break;
              }
            case (4):
              {
                _twoTEC.text = '${double.parse(v) / 1550.0031}';
                break;
              }
            case (5):
              {
                _twoTEC.text = '${double.parse(v) / 10.763910417}';
                break;
              }
            case (6):
              {
                _twoTEC.text = '${double.parse(v) * 0.83612736}';
                break;
              }
            case (7):
              {
                _twoTEC.text = '${double.parse(v) * 100}';
                break;
              }
            case (8):
              {
                _twoTEC.text = '${double.parse(v) * 10000}';
                break;
              }
            case (9):
              {
                _twoTEC.text = '${double.parse(v) * 1000000}';
                break;
              }
            case (10):
              {
                _twoTEC.text = '${double.parse(v) * 4046.8726099}';
                break;
              }
            case (11):
              {
                _twoTEC.text = '${double.parse(v) * 2589988.110336}';
                break;
              }
          }
          break;
        }
      case (4):
        {
          switch (_oneCurrentStateForTF) {
            case (0):
              {
                _twoTEC.text = '${double.parse(v)/645.16}';
                break;
              }
            case (1):
              {
                _twoTEC.text = '${double.parse(v)/6.4516}';
                break;
              }
            case (2):
              {
                _twoTEC.text = '${double.parse(v) / 0.064516}';
                break;
              }
            case (3):
              {
                _twoTEC.text = '${double.parse(v) / 0.00064516}';
                break;
              }
            case (4):
              {
                _twoTEC.text = v;
                break;
              }
            case (5):
              {
                _twoTEC.text = '${double.parse(v) * 144}';
                break;
              }
            case (6):
              {
                _twoTEC.text = '${double.parse(v) * 1296}';
                break;
              }
            case (7):
              {
                _twoTEC.text = '${double.parse(v) * 155000.31}';
                break;
              }
            case (8):
              {
                _twoTEC.text = '${double.parse(v) * 15500031}';
                break;
              }
            case (9):
              {
                _twoTEC.text = '${double.parse(v) * 1550003100}';
                break;
              }
            case (10):
              {
                _twoTEC.text = '${double.parse(v) * 6272640}';
                break;
              }
            case (11):
              {
                _twoTEC.text = '${double.parse(v) * 4014489600}';
                break;
              }
          }
          break;
        }
    }
  }

  void _onChangeTwo(v) {}
}
