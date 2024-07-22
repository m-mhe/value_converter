import 'package:flutter/material.dart';
import 'package:value_converter/ui/screen/temperature_converter_screen.dart';
import 'package:value_converter/ui/widget/common_app_bar.dart';
import 'package:value_converter/ui/widget/percentage_screen_bottom_navigation_bar.dart';
import 'area_units.dart';
import 'length_units.dart';

class HomeNavigatorScreen extends StatelessWidget {
  const HomeNavigatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        screenTitle: 'Value Converter',
        child: const Icon(Icons.calculate),
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.sizeOf(context).width / 37),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.5,
            crossAxisSpacing: MediaQuery.sizeOf(context).width / 47,
            mainAxisSpacing: MediaQuery.sizeOf(context).width / 47,
          ),
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TemperatureConverterScreen()));
              },
              child: const Icon(Icons.thermostat),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const PercentageScreenBottomNavigationBar()));
              },
              child: const Icon(Icons.percent),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.currency_exchange),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LengthUnits(),
                  ),
                );
              },
              child: const Text('Length'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AreaUnits(),
                  ),
                );
              },
              child: const Text('Area'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Weight'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Volume'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Cooking'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Work'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Force'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Power'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Binary'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Data'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.speed),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.av_timer),
            ),
          ],
        ),
      ),
    );
  }
}
