import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SyncfusionFlutterGaugesTest extends StatefulWidget {
  const SyncfusionFlutterGaugesTest({Key? key}) : super(key: key);

  @override
  _SyncfusionFlutterGaugesTestState createState() => _SyncfusionFlutterGaugesTestState();
}

class _SyncfusionFlutterGaugesTestState extends State<SyncfusionFlutterGaugesTest> {
  Widget _getGauge({bool isRadialGauge = false}) {
    return SingleChildScrollView(
      child: ListBody(
        children: [
          _getRadialGauge(),
          _getLinearGauge(),
          _getLinearProgressIndicator(),
        ],
      ),
    );
  }

  Widget _getRadialGauge() {
    return SfRadialGauge(title: GaugeTitle(text: 'Speedometer', textStyle: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)), axes: <RadialAxis>[
      RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
        GaugeRange(startValue: 0, endValue: 50, color: Colors.green, startWidth: 10, endWidth: 10),
        GaugeRange(startValue: 50, endValue: 100, color: Colors.orange, startWidth: 10, endWidth: 10),
        GaugeRange(startValue: 100, endValue: 150, color: Colors.red, startWidth: 10, endWidth: 10)
      ], pointers: <GaugePointer>[
        NeedlePointer(value: 90)
      ], annotations: <GaugeAnnotation>[
        GaugeAnnotation(widget: Container(child: const Text('90.0', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))), angle: 90, positionFactor: 0.5)
      ])
    ]);
  }

  Widget _getLinearGauge() {
    return Container(
      child: SfLinearGauge(
          minimum: 0.0,
          maximum: 10.0,
          orientation: LinearGaugeOrientation.horizontal,
          majorTickStyle: LinearTickStyle(length: 20),
          axisLabelStyle: TextStyle(fontSize: 12.0, color: Colors.black),
          axisTrackStyle: LinearAxisTrackStyle(color: Colors.cyan, edgeStyle: LinearEdgeStyle.bothFlat, thickness: 15.0, borderColor: Colors.grey)),
      margin: EdgeInsets.all(10),
    );
  }

  Widget _getLinearProgressIndicator() {
    return Column(
      children: <Widget>[
        Text(
          '깃 브랜치 작업',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          width: 300,
          height: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              value: 0.4622,
              backgroundColor: Colors.tealAccent,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Syncfusion Flutter Gauge')), body: _getGauge());
  }
}
