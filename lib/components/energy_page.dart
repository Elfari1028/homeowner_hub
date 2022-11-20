import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeowner_hub/components/energy/add_usage.dart';
import 'package:homeowner_hub/components/energy/promotion_card.dart';
import 'package:homeowner_hub/components/energy/usage_chart.dart';
import 'package:homeowner_hub/components/solar_form_page.dart';
import 'package:homeowner_hub/store/store.dart';
import 'package:homeowner_hub/utils/usage_cal.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class EnergyMainPage extends StatefulWidget {
  createState() => EnergyMainPageState();
}

class EnergyMainPageState extends State<EnergyMainPage> {
  Color mainColor = Color(0xFF5b4ee9);
  List<FlSpot> dataSpots = [];
  List<FlSpot> moneySpots = [];
  @override
  void initState() {
    super.initState();
    updateData();
  }

  void updateData() {
    dataSpots = EnergyUsageUtil.usageGraphData;
    moneySpots = EnergyUsageUtil.costGraphData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: fabv,
        appBar: AppBar(
          backgroundColor: Color(0xFF5b4ee9),
          centerTitle: false,
          title: Text("Energy Tracker"),
        ),
        body: ListView(
          children: [
            header,
            Container(
              width: Get.width,
              height: Get.height - 140 - 50 - 50 - 50,
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text("Electricity Cost 14-Day Overview"),
                  ),
                  LineChartUsage(
                    spots: moneySpots,
                    unit: "€",
                  ),
                  ListTile(
                    title: Text("Go Green, Go Clean, Go Cheap"),
                  ),
                  SolarPromotionCard(),
                  ListTile(
                    title: Text("Electricity Usage 14-Day Overview"),
                  ),
                  LineChartUsage(spots: dataSpots),
                  ListTile(
                    title: Text("Track your energy usage with ease"),
                  ),
                  PlugPromotionCard(),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ],
        ));
  }

  Widget get fabv => SpeedDial(
        closedForegroundColor: Colors.black,
        openForegroundColor: Colors.white,
        closedBackgroundColor: Colors.white,
        openBackgroundColor: Colors.black,
        labelsBackgroundColor: Colors.white,
        speedDialChildren: <SpeedDialChild>[
          SpeedDialChild(
            child: Icon(Icons.add),
            foregroundColor: Colors.white,
            backgroundColor: Colors.red,
            label: 'Add Electricity Usage',
            onPressed: () async {
              await Get.to(() => const AddUsagePage());
              updateData();
              if (mounted) setState(() {});
            },
            closeSpeedDialOnPressed: false,
          ),
          SpeedDialChild(
            child: const Icon(Icons.device_hub),
            foregroundColor: Colors.black,
            backgroundColor: Colors.yellow,
            label: 'Smart Plug-O-Meter™️',
            onPressed: () {},
          ),
        ],
        child: const Icon(Icons.add),
      );

  Widget get header => Container(
        height: 140,
        padding:
            const EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 10),
        decoration: const BoxDecoration(
            color: Color(0xFF5b4ee9),
            borderRadius: BorderRadius.vertical(
                top: Radius.zero, bottom: Radius.circular(16))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Your Energy Bills this month so far...",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "\€ ${EnergyUsageUtil.getPastMonthCost.toStringAsFixed(2)}",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(left: 10, bottom: 5),
                //   child: Text(
                //     "Per Month",
                //     style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.white),
                //   ),
                // )
              ],
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: prefer_const_constructors
                Text(
                  "avergaing \$ ${EnergyUsageUtil.avgCostPerDay.toStringAsFixed(2)} per day",
                  style: TextStyle(color: Colors.white),
                ),
                // Row(
                //   children: [
                //     Text("You're below average use today",
                //         style: TextStyle(color: Colors.white)),
                //   ],
                // ),
              ],
            ))
          ],
        ),
      );
}
