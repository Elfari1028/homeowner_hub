// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:homeowner_hub/store/store.dart';

class AddUsagePage extends StatefulWidget {
  const AddUsagePage({Key? key}) : super(key: key);

  @override
  _AddUsageState createState() => _AddUsageState();
}

class _AddUsageState extends State<AddUsagePage> {
  Map data = {
    "E": 0,
    "P": 1.2,
    "T": "",
    "D": DateTime.now().toString().substring(0, 10)
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Electricity Usage")),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(),
        child: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              onChanged: ((value) {
                data["E"] = double.tryParse(value) ?? data["E"];
              }),
              decoration: InputDecoration(
                suffixText: "kWh",
                prefixIcon: Icon(Icons.electrical_services),
                labelText: "Usage Today",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              onChanged: ((value) {
                data["P"] = double.tryParse(value) ?? data["P"];
              }),
              decoration: InputDecoration(
                suffixText: "€ / kWh",
                prefixIcon: Icon(Icons.euro),
                labelText: "Unit Price",
                hintText: "Average Price of Today is 1.2€/kWh",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          TextField(
            onChanged: ((value) {
              data["T"] = value;
            }),
            decoration: InputDecoration(
              suffixText: "",
              prefixIcon: Icon(Icons.electrical_services),
              hintText: "dryer, TV, washing machine ...etc",
              labelText: "Tag(Optional)",
              border: OutlineInputBorder(),
            ),
          ),
          OutlinedButton(
            onPressed: () async {
              DateTime? result = await showDatePicker(
                  context: context,
                  initialDate: DateTime.parse(data["D"]),
                  firstDate: DateTime.now().subtract(Duration(hours: 24 * 31)),
                  lastDate: DateTime.now().add(Duration(hours: 24)));
              if (result != null) {
                data["D"] = result.toString().substring(0, 10);
              }
              setState(() {});
            },
            child: Container(child: Text(data["D"])),
          ),
          ElevatedButton(
              onPressed: () {
                Store.putUsage(data);
                Get.back();
              },
              child: Container(
                width: 100,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Icon(Icons.check), Text("Save")]),
              ))
        ]),
      ),
    );
  }
}
