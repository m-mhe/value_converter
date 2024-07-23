import 'package:flutter/material.dart';
import 'package:value_converter/ui/widget/common_app_bar.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  List<String> names = ['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven'];
  String current = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        screenTitle: 'Demo',
        child: const Icon(Icons.developer_mode),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownMenu(
              onSelected: (v){
                current = names[v??0];
                setState(() {});
              },
                label: const Text(
                  'Demo',
                  style: TextStyle(color: Colors.black),
                ),
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 0, label: names[0]),
                  DropdownMenuEntry(value: 1, label: names[1]),
                  DropdownMenuEntry(value: 2, label: names[2]),
                  DropdownMenuEntry(value: 3, label: names[3]),
                  DropdownMenuEntry(value: 4, label: names[4]),
                  DropdownMenuEntry(value: 5, label: names[5]),
                  DropdownMenuEntry(value: 6, label: names[6]),
                ]),
            Text(current, style: TextStyle(color: Colors.black),)
          ],
        ),
      ),
    );
  }
}
