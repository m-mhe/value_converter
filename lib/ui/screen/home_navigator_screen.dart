import 'package:flutter/material.dart';
import 'package:value_converter/ui/screen/temperature_converter_screen.dart';
import 'package:value_converter/ui/widget/common_app_bar.dart';

class HomeNavigatorScreen extends StatefulWidget {
  const HomeNavigatorScreen({super.key});

  @override
  State<HomeNavigatorScreen> createState() => _HomeNavigatorScreenState();
}

class _HomeNavigatorScreenState extends State<HomeNavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        screenTitle: 'Value Converter',
        child: const Icon(Icons.calculate_outlined),
      ),
      body: Padding(padding: EdgeInsets.all(MediaQuery.sizeOf(context).width/37),
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.5,
          crossAxisSpacing: MediaQuery.sizeOf(context).width/47,
          mainAxisSpacing: MediaQuery.sizeOf(context).width/47,
        ),
          children: [
            ElevatedButton(onPressed: _navigateToTemperatureConverter, child: Icon(Icons.thermostat),),
            ElevatedButton(onPressed: (){}, child: Icon(Icons.percent),),
            ElevatedButton(onPressed: (){}, child: Icon(Icons.currency_exchange),),
            ElevatedButton(onPressed: (){}, child: Text('Length'),),
            ElevatedButton(onPressed: (){}, child: Text('Area'),),
            ElevatedButton(onPressed: (){}, child: Text('Weight'),),
            ElevatedButton(onPressed: (){}, child: Text('Volume'),),
            ElevatedButton(onPressed: (){}, child: Text('Cooking'),),
            ElevatedButton(onPressed: (){}, child: Text('Work'),),
            ElevatedButton(onPressed: (){}, child: Text('Force'),),
            ElevatedButton(onPressed: (){}, child: Text('Power'),),
            ElevatedButton(onPressed: (){}, child: Text('Binary'),),
            ElevatedButton(onPressed: (){}, child: Text('Data'),),
            ElevatedButton(onPressed: (){}, child: Icon(Icons.speed),),
            ElevatedButton(onPressed: (){}, child: Icon(Icons.av_timer),),
          ],
        ),
      ),
    );
  }

  //--------------------------------------Functions--------------------------------------
  void _navigateToTemperatureConverter(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> TemperatureConverterScreen()));
  }
}
