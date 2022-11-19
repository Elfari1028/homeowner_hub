import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeowner_hub/const/const.dart';
import 'package:homeowner_hub/main.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Our Services",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18)),
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // childAspectRatio: (1 / 1),
          ),
          itemBuilder: (context, index) {
            // Container(height: 20, child: Image.asset('assets/images/icons/doctor.png', fit: BoxFit.cover,)),
            return GestureDetector(
              // onTap: () {
              //   gridHandler(index);
              // },
              child: Container(
                // height: Get.height*0.2,
                padding: const EdgeInsets.all(0.0),
                child: Card(
                  margin: index != 909
                      ? EdgeInsets.all(8)
                      : EdgeInsets.only(bottom: 12, left: 7, right: 7),

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
                          height: (Get.height) * 0.16,
                          // padding: EdgeInsets.only(top: 0),
                          child: Container(
                              // margin: 0,
                              // child: ClipRRect(
                              // borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                            categoriesListIcons[index],
                            // fit: BoxFit.contain,
                            // height: Get.height * 0.1,
                            // width: MediaQuery.of(context).size.width * 0.4,
                          )
                              // ),
                              ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(50, 30),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
      ),
    );
  }
}
