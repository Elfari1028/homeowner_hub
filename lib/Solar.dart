import 'package:flutter/material.dart';
import 'package:homeowner_hub/main.dart';

class Solar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Soolar Panels",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
      ),


      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
      
              
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: Image.asset("assets/panel.png")
              // child: 
      
            ),
      
            Container(
              margin: EdgeInsets.only(left:15, right:15),
      // The current energy crisis have led to increase in prices for gas, electrcity, transportation and food. Electricity prices in Germany have  increased by 26 percent.
      
              child: 
              Text('''
              
Did you know that having solar panels could reduce your monthly energy bills by 40-70%? 
      
We will provide our costumer with a loan to have solar panels in their houses and save money.
Are you interested in more details? Please fill the form below and we will contact you!''',
              style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                      textAlign: TextAlign.start,
                                    
              ),
            ),
      
      
      Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
      
      
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Postal code",
                  labelText: "Postal Code",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.only(
                left: 0,
                right: 0,
                top: 0,
                bottom: 4,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 1.0, left: 8, right: 8),
                child: Container(
                  // height: 50,
                  // width: 210,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: ElevatedButton(
                    onPressed: ()  {
                      
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.07,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            

      
      
          ],
        ),
      ),
      );
  }
}
