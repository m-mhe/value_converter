import 'package:flutter/material.dart';
import 'package:value_converter/ui/widget/appDrawer.dart';
import 'package:value_converter/ui/widget/common_app_bar.dart';

class PercentageScreenBottomNavigationBar extends StatefulWidget {
  const PercentageScreenBottomNavigationBar({super.key});

  @override
  State<PercentageScreenBottomNavigationBar> createState() =>
      _PercentageScreenBottomNavigationBarState();
}

class _PercentageScreenBottomNavigationBarState
    extends State<PercentageScreenBottomNavigationBar> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        screenTitle: 'Percentage Calculator',
        child: Icon(Icons.percent),
      ),
      endDrawer: AppDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        onTap: (i){
          setState(() {
            selectIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.percent), label: 'Percent'),
          BottomNavigationBarItem(icon: Icon(Icons.join_left), label: 'Net'),
          BottomNavigationBarItem(icon: Icon(Icons.join_full), label: 'Total'),
        ],
      ),
    );
  }
}
