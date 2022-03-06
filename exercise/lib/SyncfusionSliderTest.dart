import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart' hide LabelPlacement;
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SyncfusionSliderTest extends StatefulWidget {
  const SyncfusionSliderTest({Key? key}) : super(key: key);

  @override
  _SyncfusionSliderTestState createState() => _SyncfusionSliderTestState();
}

class _SyncfusionSliderTestState extends State<SyncfusionSliderTest> {
  double _value = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter Range Selector'),
      ),
      body: Column(
        children: [
          SfSlider(
            min: 0.0,
            max: 100.0,
            value: _value,
            interval: 20,
            showTicks: true,
            showLabels: true,
            enableTooltip: true,
            minorTicksPerInterval: 1,
            onChanged: (dynamic value) {
              setState(() {
                _value = value;
              });
            },
          ),
          SfSlider(
            min: 0.0,
            max: 100.0,
            value: _value,
            interval: 20,
            showTicks: true,
            showLabels: true,
            enableTooltip: true,
            minorTicksPerInterval: 1,
            onChanged: (dynamic value) {
              setState(() {
                _value = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

class Data {
  /// Initialize the instance of the [Data] class.
  Data({required this.x, required this.y});

  /// Spline series x points.
  final DateTime x;

  /// Spline series y points.
  final double y;
}
