import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeowner_hub/Solar.dart';
import 'package:homeowner_hub/energy/add_usage.dart';
import 'package:homeowner_hub/energy/usage_chart.dart';
import 'package:homeowner_hub/store/store.dart';
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
    initData();
  }

  void initData() {
    List list = Store.readUsage();
    dataSpots = List.generate(14, (index) {
      String curr = DateTime.now()
          .subtract(Duration(days: index))
          .toString()
          .substring(0, 10);
      double sum = 0;
      List temp = list.where((element) => element["D"] == curr).toList();
      temp.forEach((element) {
        print(element);
        sum += element["E"];
      });
      return FlSpot(14.0 - index, sum);
    });
    moneySpots = List.generate(14, (index) {
      String curr = DateTime.now()
          .subtract(Duration(days: index))
          .toString()
          .substring(0, 10);
      double sum = 0;
      List temp = list.where((element) => element["D"] == curr).toList();
      temp.forEach((element) {
        print(element);
        sum += element["E"] * element["P"];
      });
      return FlSpot(14.0 - index, sum);
    });
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
                  solarCard,
                  ListTile(
                    title: Text("Electricity Usage 14-Day Overview"),
                  ),
                  LineChartUsage(spots: dataSpots),
                  ListTile(
                    title: Text("Track your energy usage with ease"),
                  ),
                  plugCard,
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ],
        ));
  }

  Widget get solarCard => Padding(
      padding: EdgeInsets.only(top: 10),
      child: Container(
        width: Get.width * 0.8,
        padding: EdgeInsets.zero,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                colors: [Color(0xFFf9d423), Color(0xFFff4e50)],
                stops: [0.0, 1.0],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text("Save upto 12€ per month*",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold))),
            Padding(
                padding: EdgeInsets.only(left: 15, top: 5),
                child: Text("install Solar Panels with our loan payment plan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal))),
            Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      ...List<Widget>.generate(
                          3,
                          (index) => Image.asset(
                                "assets/solarpanel.png",
                                width: 50,
                                height: 60,
                              )),
                    ]),
                    OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide.none)),
                        onPressed: () {
                          Get.to(() => Solar());
                        },
                        child: Row(
                          children: [
                            Text(
                              "Go green today",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.white,
                            )
                          ],
                        ))
                  ],
                ))
          ],
        ),
      ));
  Widget get plugCard => Padding(
      padding: EdgeInsets.only(top: 10),
      child: Container(
        width: Get.width * 0.8,
        padding: EdgeInsets.zero,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                colors: [Color(0xFF84fab0), Color(0xFF8fd3f4)],
                stops: [0.0, 1.0],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text("Smart Plug-O-Meters",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold))),
            Padding(
                padding: EdgeInsets.only(left: 15, top: 5),
                child: Text("Auto-Track and catergorize your energy usage",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal))),
            Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      ...List<Widget>.generate(
                          1,
                          (index) => Image.asset(
                                "assets/plug.png",
                                width: 70,
                                height: 60,
                              )),
                    ]),
                    OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide.none)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Go smart today",
                              style: TextStyle(color: Colors.black),
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.black,
                            )
                          ],
                        ))
                  ],
                ))
          ],
        ),
      ));
  Widget get fabv => SpeedDial(
        child: Icon(Icons.add),
        closedForegroundColor: Colors.black,
        openForegroundColor: Colors.white,
        closedBackgroundColor: Colors.white,
        openBackgroundColor: Colors.black,
        // labelsStyle: /* Your label TextStyle goes here */
        labelsBackgroundColor: Colors.white,
        // controller: /* Your custom animation controller goes here */,
        // controller: AnimationController(
        //     duration: Duration(milliseconds: 50), vsync: this),
        speedDialChildren: <SpeedDialChild>[
          SpeedDialChild(
            child: Icon(Icons.add),
            foregroundColor: Colors.white,
            backgroundColor: Colors.red,
            label: 'Add Electricity Usage',
            onPressed: () async {
              await Get.to(() => const AddUsagePage());
              setState(() {
                initData();
              });
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
          //  Your other SpeedDialChildren go here.
        ],
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
                    "\€120",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 5),
                  child: Text(
                    "Per Month",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            Container(
                // padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$ 12 per day",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    Text("You're below average use today",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ))
          ],
        ),
      );
}
