import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
// import 'Connect.dart';
import 'Soil Moisture.dart';
import 'Weather_Screens/Weather.dart';
class MainDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(
          'My Activity',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: MainActivityBody(),
    );
  }
}

class MainActivityBody extends StatefulWidget {
  @override
  _MainActivityBodyState createState() => _MainActivityBodyState();
}

class _MainActivityBodyState extends State<MainActivityBody> {
  late List<SoilWaterData> _charData;
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _charData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[50],
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 2),
                  borderRadius: BorderRadius.circular(22.0)),
              child: SfCircularChart(
                title: ChartTitle(
                    text: 'Water Summary',
                    textStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                legend: Legend(
                    isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
                tooltipBehavior: _tooltipBehavior,
                series: <CircularSeries>[
                  RadialBarSeries<SoilWaterData, String>(
                      dataSource: _charData,
                      xValueMapper: (SoilWaterData data, _) => data.name,
                      yValueMapper: (SoilWaterData data, _) => data.waterReq,
                      // dataLabelSettings: DataLabelSettings(isVisible: true),
                      enableTooltip: true,
                      maximumValue: 150,
                      trackBorderWidth: 2.0),
                ],
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap:() {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Connect()),);
                    print('Navigated to Make connection');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0,left: 14),
                    child: Container(
                      height: 180.0,
                      width: 130.0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0,left: 30.0),
                        child: Text('Connect',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green[400]!.withOpacity(.75),
                        borderRadius: BorderRadius.circular(22)
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>soil_Moisture()),);},
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0,right: 5.0,left: 8),
                    child: Container(
                      height: 130.0,
                      width: 150.0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0,left: 18.0),
                        child: Text('Soil Moisture ',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.green[400]!.withOpacity(.75),
                          borderRadius: BorderRadius.circular(22)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<SoilWaterData> getChartData() {
    final List<SoilWaterData> charData = [
      SoilWaterData('Rice', 175),
      SoilWaterData('Maize', 50),
      SoilWaterData('Pulses', 60),
      SoilWaterData('Cotton', 80),
      SoilWaterData('Jute', 55),
      SoilWaterData('SugarCane', 75),
      SoilWaterData('Fruits', 90)
    ];
    return charData;
  }
}

class SoilWaterData {
  SoilWaterData(this.name, this.waterReq);
  final String name;
  final int waterReq;
}
