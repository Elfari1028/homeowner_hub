// import 'package:firebase_app/pages/Profile.dart';
// import 'package:firebase_app/pages/list_of_categories.dart';

// import 'package:firebase_app/pages/verify.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:homeowner_hub/components/nav_root.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          titleWidget: Column(
            children: <Widget>[
              Container(height: 30),
              Image.asset("assets/onboarding1.png"),
              Container(height: 30),
              Text("Never miss an opportunity to save energy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: const Color(0xD8172221),
                      fontWeight: FontWeight.bold,
                      fontSize: 22)),
            ],
          ),
          bodyWidget: Column(
            children: <Widget>[
              Text(
                "Easily save energy with our tools and save the planet",
                style: TextStyle(
                    color: const Color(0xD8172221),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          decoration: const PageDecoration(
            pageColor: const Color(0xffE7E7E9),
          )),
      PageViewModel(
          image: Image.asset("assets/onboarding2.png"),
          title: "Save money on the go",
          body:
              "Obtain advice from our professionals on affordable green energy solutions",
          decoration: const PageDecoration(
            pageColor: const Color(0xFFF2F2F3),
          )),
      PageViewModel(
          image: Image.asset("assets/onboarding3.png"),
          title:
              "Find and utilize environmentally friendly services in Germany!",
          body: "Join us in the pursuit of the ideal place to call home.",
          decoration: const PageDecoration(
            pageColor: const Color(0xFFF2F2F3),
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.blue[100],
        pages: getPages(),
        showNextButton: false,
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: TextStyle(color: const Color(0xff121A19)),
        ),
        done: Text(
          "Got it ",
          style: TextStyle(color: const Color(0xff121A19)),
        ),
        onDone: () {
          Get.to(NavRootPage());
        },
      ),
    );
  }
}
