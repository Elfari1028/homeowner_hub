import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:homeowner_hub/api/api.dart';
import 'package:homeowner_hub/components/solar_form_page.dart';

import 'package:homeowner_hub/const/const.dart';
import 'package:homeowner_hub/utils/usage_cal.dart';

import 'package:url_launcher/url_launcher.dart';

// "www.google.com"

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  List<String> title = [];
  List<String> descriptions = [];
  dynamic data = [];

  void callApi() async {
    // print(data[0].values.toList());
    data = await APICall.get('/news/get_news');

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    callApi();
  }

  _launchURL() async {
    var url = Uri.parse("https://flutter.io");
    if (await canLaunchUrl(url)) {
      // ignore: deprecated_member_use
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void gridHandler(index) {
    if (categoriesList[index] == "Solar panels") {
      Get.to(SolarFormPage());
    } else if (categoriesList[index] == "Home decoration") {
      _launchURL();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F4F8),
        automaticallyImplyLeading: false,
        title: Container(
          padding: EdgeInsets.only(bottom: 6, left: 6),
          child: Text(
            'Dashboard',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
            child: Container(
              width: 60,
              height: 60,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset("assets/Malazz.png"
                  // fit: BoxFit.cover,
                  ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              greetCard,
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                child: Container(
                  padding: EdgeInsets.only(bottom: 12, left: 6),
                  child: Text('Our Services: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // childAspectRatio: (1 / 1),
                ),
                itemBuilder: (context, index) {
                  // Container(height: 20, child: Image.asset('assets/images/icons/doctor.png', fit: BoxFit.cover,)),
                  return GestureDetector(
                    onTap: () {
                      gridHandler(index);
                    },
                    child: Container(
                      // height: MediaQuery.of(context).size.height*0.2,
                      padding: const EdgeInsets.all(0.0),
                      child: Card(
                        margin: index == 0 || index == 3
                            ? EdgeInsets.only(left: 14, bottom: 12, right: 7)
                            : index == 2 || index == 5
                                ? EdgeInsets.only(
                                    left: 7,
                                    bottom: 12,
                                    right: 14,
                                  )
                                : EdgeInsets.only(
                                    bottom: 12, left: 7, right: 7),

                        // ? const EdgeInsets.only(top: 10.0, left: 4, right: 4, bottom: 4)
                        // : const EdgeInsets.all(4.0),

                        // elevation: 18,
                        // padding: EdgeInsets.all(0)
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
                                height:
                                    (MediaQuery.of(context).size.height) * 0.1,
                                // padding: EdgeInsets.only(top: 0),
                                child: Container(
                                    // margin: 0,
                                    // child: ClipRRect(
                                    // borderRadius: BorderRadius.circular(0.0),
                                    child: Image.asset(
                                  categoriesListIcons[index],
                                  // fit: BoxFit.contain,
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  // width: MediaQuery.of(context).size.width * 0.4,
                                )
                                    // ),
                                    ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(50, 30),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  // alignment: Alignment.centerLeft
                                ),
                                onPressed: () {
                                  // gridHandler(index);
                                },
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 4, 0, 0),
                child: Container(
                  padding: EdgeInsets.only(bottom: 4, left: 6),
                  child: Text('Real Estate News',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ),
              ),
              !(data != null && data is List && data.length > 0)
                  ? Container(
                      width: Get.width,
                      height: 100,
                      child: Center(
                          child:
                              CircularProgressIndicator(color: Colors.black)))
                  : ListView.builder(
                      itemCount: data.length,
                      // padding: EdgeInsets.all(8),
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return
                            // Column(
                            // children: [
                            Container(
                          padding: index != data.length - 1
                              ? EdgeInsetsDirectional.fromSTEB(18, 4, 18, 4)
                              : EdgeInsetsDirectional.fromSTEB(18, 4, 18, 18),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Color(0x411D2429),
                                  offset: Offset(0, 1),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 8, top: 0),
                              child:
                                  // Row(
                                  // mainAxisSize: MainAxisSize.max,
                                  // children: [
                                  Expanded(
                                child: Container(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 6, 8, 6),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // print(data[index]["title"]);

                                      Text('${data[index]["title"]}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          )),
                                      // Container(
                                      //   padding:
                                      //       EdgeInsetsDirectional.fromSTEB(
                                      //           4, 4, 8, 4),
                                      //   child: Text('${data[index]["description"]}',
                                      //       textAlign: TextAlign.start,
                                      //       style: TextStyle(
                                      //         color: Colors.black,
                                      //         fontWeight: FontWeight.normal,
                                      //         fontSize: 12,
                                      //       )),
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                              // Column(
                              //   mainAxisSize: MainAxisSize.max,
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceBetween,
                              //   crossAxisAlignment: CrossAxisAlignment.end,
                              //   children: [
                              //     Padding(
                              //       padding: EdgeInsetsDirectional.fromSTEB(
                              //           0, 4, 0, 0),
                              //       child: Icon(
                              //         Icons.chevron_right_rounded,
                              //         color: Color(0xFF57636C),
                              //         size: 24,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              // ],
                              // ),
                            ),
                          ),
                        );
                        // ],
                        // );
                      },
                      // separatorBuilder: (BuildContext context, int index) => const Divider(),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get greetCard => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x25090F13),
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Below are your daily energy cost.',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 20),
                ),
                Divider(
                  height: 24,
                  thickness: 2,
                  color: Color(0xFFF1F4F8),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Days Tracked',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 20),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "${EnergyUsageUtil.daysTracked}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 50),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Avg. Cost',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 20),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  "${EnergyUsageUtil.avgCostPerDay}",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 50),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(2),
                                child: Icon(
                                  Icons.euro_sharp,
                                  color: Color(0xFF57636C),
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
