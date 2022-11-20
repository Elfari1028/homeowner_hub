import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeowner_hub/components/browser_page.dart';
import 'package:homeowner_hub/components/solar_form_page.dart';
import 'package:homeowner_hub/utils/usage_cal.dart';

class SolarPromotionCard extends StatelessWidget {
  bool isBanner;
  SolarPromotionCard({Key? key, this.isBanner = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: isBanner ? 0 : 10),
        child: Container(
          padding: EdgeInsets.zero,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(isBanner ? 0 : 20),
              gradient: LinearGradient(
                  colors: [Color(0xFFf9d423), Color(0xFFff4e50)],
                  stops: [0.0, 1.0],
                  begin: isBanner ? Alignment.centerLeft : Alignment.topLeft,
                  end: isBanner
                      ? Alignment.centerRight
                      : Alignment.bottomRight)),
          child: Column(
            crossAxisAlignment: isBanner
                ? CrossAxisAlignment.stretch
                : CrossAxisAlignment.start,
            mainAxisAlignment: isBanner
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 15, top: 10),
                  child: Text(
                      "Save upto ${EnergyUsageUtil.moneySaved}€ per month*",
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
              if (isBanner == false)
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
                                side:
                                    MaterialStateProperty.all(BorderSide.none)),
                            onPressed: () {
                              Get.to(() => SolarFormPage());
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
  }
}

class PlugPromotionCard extends StatelessWidget {
  const PlugPromotionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                          onPressed: () {
                            Get.to(() => BrowserPage(
                                  initalUrl: "www.google.com",
                                  title: "Smart Plug-O-Meter",
                                ));
                          },
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
  }
}
