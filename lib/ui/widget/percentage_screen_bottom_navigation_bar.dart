import 'package:flutter/material.dart';
import 'package:value_converter/ui/screen/percentage_calculator_screen/net.dart';
import 'package:value_converter/ui/screen/percentage_calculator_screen/percent.dart';
import 'package:value_converter/ui/screen/percentage_calculator_screen/total.dart';
import 'package:value_converter/ui/widget/common_app_drawer.dart';
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
  final List<Widget> screenList = [PercentScreen(), NetScreen(), TotalScreen(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        screenTitle: 'Percentage Calculator',
        child: const Icon(Icons.percent),
      ),
      endDrawer: CommonAppDrawer(),
      body: screenList[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        onTap: (i){
          setState(() {
            selectIndex = i;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.percent), label: 'Percent'),
          BottomNavigationBarItem(icon: Icon(Icons.join_left), label: 'Net'),
          BottomNavigationBarItem(icon: Icon(Icons.join_full), label: 'Total'),
        ],
      ),
    );
  }
}
