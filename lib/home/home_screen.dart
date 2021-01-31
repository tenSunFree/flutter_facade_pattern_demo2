import 'package:flutter/material.dart';
import 'package:flutter_facade_pattern_demo/home/home_features_facade.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeFeaturesFacade _facade = HomeFeaturesFacade();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Image.asset('assets/icon_background.png'),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Expanded(child: SizedBox(), flex: 321),
        buildFeaturesExpanded(
            _facade.getPromoteImagePath(), _facade.repairPromote),
        buildFeaturesExpanded(
            _facade.getMemoryImagePath(), _facade.repairMemory),
        buildFeaturesExpanded(
            _facade.getThreatImagePath(), _facade.repairThreat),
        buildFeaturesExpanded(
            _facade.getBatteryImagePath(), _facade.repairBattery),
        Expanded(child: SizedBox(), flex: 427)
      ])
    ]));
  }

  Expanded buildFeaturesExpanded(String imagePath, Function function) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.all(16),
            child: GestureDetector(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(imagePath)),
                onTap: () {
                  setState(() {
                    function();
                  });
                })),
        flex: 113);
  }
}
