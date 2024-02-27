import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Graph Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ButtonGraphPage(),
    );
  }
}

class ButtonGraphPage extends StatefulWidget {
  @override
  _ButtonGraphPageState createState() => _ButtonGraphPageState();
}

class _ButtonGraphPageState extends State<ButtonGraphPage> {
  List<charts.Series<ChartData, String>> _seriesData = [];
  List<ChartData> _data = [];

  @override
  void initState() {
    super.initState();
    _data = [
      ChartData('Button 1', 0),
      ChartData('Button 2', 0),
      ChartData('Button 3', 0),
    ];

    _seriesData.add(
      charts.Series(
        id: 'Values',
        data: _data,
        domainFn: (ChartData data, _) => data.buttonName,
        measureFn: (ChartData data, _) => data.value,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        labelAccessorFn: (ChartData data, _) =>
            '${data.buttonName}: ${data.value}',
      ),
    );
  }

  void _updateGraph(int index) {
    setState(() {
      _data[index].value++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Graph Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < _data.length; i++)
              ElevatedButton(
                onPressed: () => _updateGraph(i),
                child: Text('Button ${i + 1}'),
              ),
            SizedBox(height: 20),
            Expanded(
              child: charts.BarChart(
                _seriesData,
                animate: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  final String buttonName;
  int value;

  ChartData(this.buttonName, this.value);
}
