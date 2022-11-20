import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeowner_hub/const/const.dart';
import 'package:homeowner_hub/main.dart';
import 'package:homeowner_hub/components/solar_form_page.dart';

import 'package:url_launcher/url_launcher.dart';

class Services extends StatelessWidget {
  void gridHandler(index) {
    if (categoriesList[index] == "Solar panels") {
      Get.to(SolarFormPage());
    } else if (categoriesList[index] == "Home decoration") {
      _launchURL_Home_decoration();
    } else if (categoriesList[index] == "Home repair") {
      _launchURL_Home_repair();
    } else if (categoriesList[index] == "Recycling") {
      _launchURL_recycling();
    } else if (categoriesList[index] == "Rent electric car") {
      _launchURL_car();
    } else if (categoriesList[index] == "Other services") {
      _launchURL_other();
    }
  }

  _launchURL_Home_decoration() async {
    var url = Uri.parse(
        "https://www.blauer-engel.de/en/themenwelt/umweltfreundliches-buero");
    if (await canLaunchUrl(url)) {
      // ignore: deprecated_member_use
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL_Home_repair() async {
    var url = Uri.parse("https://berlinrealtor.de/service/renovation/");
    if (await canLaunchUrl(url)) {
      // ignore: deprecated_member_use
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL_recycling() async {
    var url =
        Uri.parse("https://spicandspan.de/blog/recycling-in-germany-guide");
    if (await canLaunchUrl(url)) {
      // ignore: deprecated_member_use
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL_car() async {
    var url = Uri.parse("https://www.share-now.com/de/en/rent-electric-cars/");
    if (await canLaunchUrl(url)) {
      // ignore: deprecated_member_use
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL_other() async {
    var url =
        Uri.parse("https://www.greenpicks.de/en/inspirations/made-in-germany/");
    if (await canLaunchUrl(url)) {
      // ignore: deprecated_member_use
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service Shortcuts",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18)),
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                gridHandler(index);
              },
              child: Container(
                // height: Get.height*0.2,
                padding: const EdgeInsets.all(0.0),
                child: Card(
                  margin: index != 909
                      ? EdgeInsets.all(8)
                      : EdgeInsets.only(bottom: 12, left: 7, right: 7),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: (Get.height) * 0.16,
                          child: Container(
                              child: Image.asset(
                            categoriesListIcons[index],
                          )),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(50, 30),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {},
                          child: Text(
                            categoriesList[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: categoriesList.length,
          shrinkWrap: true,
        ),
      ),
    );
  }
}
