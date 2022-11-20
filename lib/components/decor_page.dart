import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeowner_hub/api/api.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class DecorPage extends StatefulWidget {
  const DecorPage({Key? key}) : super(key: key);

  @override
  _DecorPageState createState() => _DecorPageState();
}

class _DecorPageState extends State<DecorPage> {
  List? data = [
    {
      "name": "Garage upgrade",
      "starting_eur_price": 200,
      "image_url":
          "https://images.pexels.com/photos/4480505/pexels-photo-4480505.jpeg?auto=compress&cs=tinysrgb&w=250&dpr=1"
    },
    {
      "name": "Wellness",
      "starting_eur_price": 70,
      "image_url":
          "https://images.pexels.com/photos/3288104/pexels-photo-3288104.png?auto=compress&cs=tinysrgb&w=250"
    }
  ];
  @override
  void initState() {
    super.initState();
    refresh();
  }

  void refresh() async {
    data = await APICall.post("/packages/get_offers");
    if (mounted) setState(() {});
  }

  Widget get fabv => SpeedDial(
        closedForegroundColor: Colors.black,
        openForegroundColor: Colors.white,
        closedBackgroundColor: Colors.white,
        openBackgroundColor: Colors.black,
        labelsBackgroundColor: Colors.white,
        speedDialChildren: <SpeedDialChild>[
          SpeedDialChild(
            child: Icon(Icons.call),
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            label: 'Call us at +49 162 0000 123',
            onPressed: () async {},
            closeSpeedDialOnPressed: false,
          ),
        ],
        child: const Icon(Icons.call),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: fabv,
        appBar: NewGradientAppBar(
          gradient: LinearGradient(
              colors: [Color(0xFF84fab0), Color(0xFF8fd3f4)],
              stops: [0.0, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          centerTitle: true,
          title: Text("Home Decor Packages"),
        ),
        body: Center(
          child: (data == null || !(data is List))
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (ctx, index) {
                    return Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          height: 150,
                          // padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(data![index]["image_url"])),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 150,
                            width: Get.width,
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.7)
                                  ],
                                  stops: [0.0, 0.7, 1],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data![index]["name"].toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                ),
                                Text(
                                    "starting from €${data![index]['starting_eur_price']} / month",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15))
                              ],
                            ),
                          ),
                        ));
                  }),
        ));
  }
}
