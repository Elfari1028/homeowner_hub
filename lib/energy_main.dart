import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnergyMainPage extends StatefulWidget {
  createState() => EnergyMainPageState();
}

class EnergyMainPageState extends State<EnergyMainPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF5b4ee9),
          centerTitle: false,
          title: Text("Energy Tracker"),
        ),
        body: Column(
          children: [
            header,
            Container(
              width: Get.width,
              // height: Get.height - 140 - 50 - 50 - 50,
              child: ListView(
                shrinkWrap: true,
                children: [],
              ),
            ),
          ],
        ));
  }

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
