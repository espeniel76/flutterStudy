import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SlidingUpPanelTest extends StatefulWidget {
  const SlidingUpPanelTest({Key? key}) : super(key: key);

  @override
  State<SlidingUpPanelTest> createState() => _SlidingUpPanelTestState();
}

class _SlidingUpPanelTestState extends State<SlidingUpPanelTest> {
  PanelController _pc = new PanelController();

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(14.0),
      topRight: Radius.circular(14.0),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("SlidingUpPanelExample"),
      ),
      body: SlidingUpPanel(
        controller: _pc,
        panel: const Center(
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter a search term'
            ),
          ),
        ),
        // collapsed: Container(
        //   decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: radius),
        //   child: Center(
        //     child: Text(
        //       "This is the collapsed Widget",
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ),
        // ),
        body: _body(),
        borderRadius: radius,
      ),
    );
  }

  Widget _body() {
    return Container(
      child: Column(
        children: <Widget>[
          ElevatedButton(
            child: Text("Open"),
            onPressed: () => _pc.open(),
          ),
          ElevatedButton(
            child: Text("Close"),
            onPressed: () => _pc.close(),
          ),
          ElevatedButton(
            child: Text("Show"),
            onPressed: () => _pc.show(),
          ),
          ElevatedButton(
            child: Text("Hide"),
            onPressed: () => _pc.hide(),
          ),
        ],
      ),
    );
  }
}
