import 'package:flutter/material.dart';
import 'package:value_converter/ui/widget/app_color.dart';
import 'package:value_converter/ui/widget/common_app_bar.dart';
import 'package:value_converter/ui/widget/common_app_drawer.dart';

class AreaUnits extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AreaUnitsState();
  }
}

class AreaUnitsState extends State<AreaUnits> {
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
                          keyboardType: TextInputType.number,
                          cursorColor: AppColor.primaryColor,
                          style: const TextStyle(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                              fillColor: AppColor.secondaryColor),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          cursorColor: AppColor.primaryColor,
                          style: const TextStyle(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                              fillColor: AppColor.secondaryColor),
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
                          initialSelection: 5,
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
                              style: TextStyle(color: AppColor.secondaryColor, fontWeight: FontWeight.w500),
                            ),
                            dropdownMenuEntries: [
                              DropdownMenuEntry(value: 0, label: 'mm'),
                              DropdownMenuEntry(value: 1, label: 'cm'),
                              DropdownMenuEntry(value: 2, label: 'dm'),
                              DropdownMenuEntry(value: 3, label: 'm'),
                              DropdownMenuEntry(value: 4, label: 'inch'),
                              DropdownMenuEntry(value: 5, label: 'ft'),
                              DropdownMenuEntry(value: 6, label: 'yd'),
                              DropdownMenuEntry(value: 7, label: 'yd'),
                              DropdownMenuEntry(value: 8, label: 'yd'),
                              DropdownMenuEntry(value: 9, label: 'yd'),
                            ]),
                        Icon(Icons.compare_arrows,color: AppColor.accentColor,),
                        DropdownMenu(
                          initialSelection: 3,
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
                              style: TextStyle(color: AppColor.secondaryColor, fontWeight: FontWeight.w500),
                            ),
                            dropdownMenuEntries: [
                              DropdownMenuEntry(value: 0, label: 'mm'),
                              DropdownMenuEntry(value: 1, label: 'cm'),
                              DropdownMenuEntry(value: 2, label: 'dm'),
                              DropdownMenuEntry(value: 3, label: 'm'),
                              DropdownMenuEntry(value: 4, label: 'inch'),
                              DropdownMenuEntry(value: 5, label: 'ft'),
                              DropdownMenuEntry(value: 6, label: 'yd'),
                              DropdownMenuEntry(value: 7, label: 'yd'),
                              DropdownMenuEntry(value: 8, label: 'yd'),
                              DropdownMenuEntry(value: 9, label: 'yd'),
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
}
