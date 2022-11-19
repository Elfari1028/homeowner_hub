
// import 'package:flutter/material.dart';


// class Profile extends StatefulWidget {
//   @override
//   _ProfileState createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
  
//   Widget _buildChip(String label, Color color) {
//     return Chip(
//       labelPadding: EdgeInsets.all(2.0),
//       // avatar: CircleAvatar(
//       //   backgroundColor: Colors.white70,
//       //   child: Text(label[0].toUpperCase()),
//       // ),
//       label: Text(
//         label,
//         style: TextStyle(
//           color: Colors.white,
//         ),
//       ),
//       backgroundColor: color,
//       elevation: 6.0,
//       shadowColor: Colors.grey[60],
//       padding: EdgeInsets.all(8.0),
//     );
//   }

  
//   @override
//   Widget build(BuildContext context) {
//     // List<double> rate = [5, 4.5, 5.0, 3.5];

//     // var mean = rate.reduce((a, b) => a + b) / rate.length;

    
//     // final skillsListWidget =
//     //     Padding(padding: EdgeInsets.all(4), child: SkillsList(m.questionsList));

//     return Scaffold(
//       body: SafeArea(
//         child: ListView(
//           children: <Widget>[
//             new Stack(children: <Widget>[
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height * 0.2,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage("assets/images/back.png"),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               // ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: <Widget>[
//                   Padding(
//                    padding:  EdgeInsets.only(
//                      top: MediaQuery.of(context).size.height * 0.1,
//                         bottom: 11,
//                         left: MediaQuery.of(context).size.width * 0.07,
//                         right: MediaQuery.of(context).size.width * 0.07
                     
//                      ),
                
//                    child: CircleAvatar(
//                      child: Padding(
//                     padding: const EdgeInsets.only(top: 85, left: 100),
                  
//                     ),
//                   radius: MediaQuery.of(context).size.width * 0.2,
//                   // backgroundImage: NetworkImage(controller.myUser.value.imageURL),
//                   backgroundColor: Colors.blue,
//                 ),
//               ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                             top: MediaQuery.of(context).size.height * 0.2,
//                         // left: MediaQuery.of(context).size.width * 0.02,
//                         right: MediaQuery.of(context).size.width * 0.04,
//                         bottom: MediaQuery.of(context).size.height * 0.02),
//                         child: Row(
//                           children: <Widget>[
//                             // Text(
//                             //   "Rating: ",
//                             //   style: TextStyle(
//                             //       color: Colors.black,
//                             //       fontWeight: FontWeight.bold,
//                             //       fontSize: 23),
//                             // ),
//                             // double x = controller.myUser.value.rating;
                            
//                           ],
//                         ),
//                       ),
                   
//                 ],


//               ),
//             ]),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 14.0, bottom: 18.0),
//                   child: Text(
//                     "Name",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 23),
//                   ),
//                 ),
//                 // RatingBar(ratingWidget: ratingWidget, onRatingUpdate: onRatingUpdate),
//               ],
//             ),

//             Container(
//               padding: EdgeInsets.only(left:14),
//               child: Text(
//                       "My skills",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 23),
//                     ),
//             ),

            
//             // Padding(
//             //   padding: const EdgeInsets.only(left: 12.0),
//             //   child: RatingBar.builder(
//             //     initialRating: 4.5,
//             //     minRating: 0,
//             //     direction: Axis.horizontal,
//             //     allowHalfRating: true,
//             //     itemCount: 5,
//             //     itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//             //     itemBuilder: (context, _) => Icon(
//             //       Icons.star,
//             //       color: Colors.amber,
//             //     ),
//             //     onRatingUpdate: (rating) {
//             //       print(rating);
//             //     },
//             //   ),
//             // ),
//             //
//             //
//             //
//             // Padding(
//             //   padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
//             //   child: Row(
//             //     children: <Widget>[
//             //       Text(
//             //         "Rating: ",
//             //         style: TextStyle(
//             //             color: Colors.black,
//             //             fontWeight: FontWeight.bold,
//             //             fontSize: 23),
//             //       ),
//             //       RatingBar.readOnly(
//             //         filledColor: Colors.yellow[700],
//             //         emptyColor: Colors.yellow[700],
//             //         halfFilledColor: Colors.yellow[700],
//             //         initialRating: mean,
//             //         isHalfAllowed: true,
//             //         halfFilledIcon: Icons.star_half,
//             //         filledIcon: Icons.star,
//             //         emptyIcon: Icons.star_border,
//             //       ),
//             //     ],
//             //   ),
//             // ),

//             // Row(
//             //   children: [
//             // Padding(
//             //   padding: const EdgeInsets.only(left: 19.0, top: 19),
//             //   child: Text(
//             //     "Price range per question:",
//             //     style: TextStyle(
//             //         color: Colors.black,
//             //         fontWeight: FontWeight.bold,
//             //         fontSize: 17),
//             //   ),
//             // ),
//             // Padding(
//             //   padding: const EdgeInsets.only(left: 6.0, top: 19),
//             //   child: Text(
//             //     m.price,
//             //     style: TextStyle(
//             //         color: Colors.black,
//             //         fontWeight: FontWeight.bold,
//             //         fontSize: 17),
//             //   ),
//             // ),
//             //   ],
//             // ),
//             // Row(children: [
//             //   Padding(
//             //     padding: const EdgeInsets.only(left: 8.0, top: 12),
//             //     child: Container(
//             //       decoration: BoxDecoration(
//             //           color: Colors.blue,
//             //           borderRadius: BorderRadius.circular(4)),
//             //       child: FlatButton(
//             //           onPressed: () {},
//             //           child: Text(
//             //             'Profile',
//             //             textAlign: TextAlign.center,
//             //             style: TextStyle(
//             //                 color: Colors.black,
//             //                 fontWeight: FontWeight.bold,
//             //                 fontSize: 17),
//             //           )),
//             //     ),
//             //   ),
//             //   Padding(
//             //     padding: const EdgeInsets.only(top: 12, right: 8),
//             //     child: Container(
//             //       decoration: BoxDecoration(
//             //           color: Colors.white,
//             //           borderRadius: BorderRadius.circular(4)),
//             //       child: FlatButton(
//             //           onPressed: () {},
//             //           child: Text(
//             //             'Previous Answered Questions',
//             //             style: TextStyle(
//             //                 color: Colors.black,
//             //                 fontWeight: FontWeight.bold,
//             //                 fontSize: 15),
//             //           )),
//             //     ),
//             //   ),
//             // ]),

//             Padding(
//               padding: const EdgeInsets.only(left: 18.0, bottom: 12.0),
//               child: Text(
//                 'About',
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 23),
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.only(left: 18.0, bottom: 12.0),
//               child: Text(
//                 "About",
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16),
//               ),
//             ),

//             // Padding(
//             //   padding: const EdgeInsets.only(top: 4, left: 18.0, bottom: 0.0),
//             //   child: Text(
//             //     'Answered questions History',
//             //     style: TextStyle(
//             //         color: Colors.black,
//             //         fontWeight: FontWeight.bold,
//             //         fontSize: 19),
//             //   ),
//             // ),

//             // m.questionsList == null
//             //     ? "No Question Answered yet"
//             //     : skillsListWidget,
            
            
//             // ListTile(
//             //       title: Text("Become a Pro member"),)

//             // ListView(
//             //       physics: BouncingScrollPhysics(),
//             //       children: [
//             //         SkillsList(skillslst)],
//             //       )
//             // 
//             Container(
//               padding: EdgeInsets.only(left:20,right: 20,top: 10,bottom: 10),
//               width: double.infinity,
//               height: 70,
//               child: MaterialButton(
//                 child: Text("Edit Profile", style:TextStyle(fontSize: 21,color: Colors.white)),
//                 color: Colors.blue,
//                 onPressed: () {
                  
//                 },
//               ),
//             ),
//             // controller.myUser.value.skill1==""? Container() : Text(controller.myUser.value.skill1,style: TextStyle(fontWeight: FontWeight.bold)),
//             // controller.myUser.value.skill2==""? Container() : Text(controller.myUser.value.skill2,style: TextStyle(fontWeight: FontWeight.bold)),
//             // controller.myUser.value.skill3==""? Container() : Text(controller.myUser.value.skill3,style: TextStyle(fontWeight: FontWeight.bold)),
//             // controller.myUser.value.skill4==""? Container() : Text(controller.myUser.value.skill4,style: TextStyle(fontWeight: FontWeight.bold)),
//             // controller.myUser.value.skill5==""? Container() : Text(controller.myUser.value.skill5,style: TextStyle(fontWeight: FontWeight.bold)),
//             // controller.myUser.value.skill6==""? Container() : Text(controller.myUser.value.skill6,style: TextStyle(fontWeight: FontWeight.bold),)
//           ],
//         ),
//       ),
//     );
//   }
// }

























































































// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';


// class Profile extends StatefulWidget {
//   @override
//   _myProfileState createState() => _myProfileState();
// }

// class _myProfileState extends State<Profile> {
//   @override

//   // List<bool> selections = List.generate(2, () => false);

//   createAlertDialogAboutApp(BuildContext context) {
//     return showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: Text(
//               "Istishara is a Mobile App that connects clients seeking help with experts in a specific field.\n\nIf you are a client and need help, go post your question or search for an expert! If you are an expert, go pick a question!",
//               style: TextStyle(
//                 fontSize: 18.0,
//               ),
//             ),
//             actions: <Widget>[
//               MaterialButton(
//                   elevation: 5.0,
//                   child: Text(
//                     "OK",
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16.0,
//                     ),
//                   ),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   }),
//             ],
//           );
//         });
//   }

//   createAlertDialogContactUs(BuildContext context) {
//     return showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title:
//                 Text("\nFor more information, don't hesitate to contact us at"),
//             content: Text(
//               "istishara0@gmail.com",
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             actions: <Widget>[
//               MaterialButton(
//                   elevation: 5.0,
//                   child: Text(
//                     "Done",
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   }),
//             ],
//           );
//         });
//   }

//   // createAlertDialogNotificationSettings(BuildContext context) {
//   //   return showDialog(
//   //       context: context,
//   //       builder: (context) {
//   //         return AlertDialog(
//   //           title: Text(
//   //             "Notification Settings",
//   //             style: TextStyle(
//   //               fontWeight: FontWeight.bold,
//   //               fontSize: 20.0,
//   //             ),
//   //           ),
//   //           actions: <Widget>[
//   //             ToggleButtons(
//   //               children: [
//   //                 Text(
//   //                   "OFF",
//   //                   style: TextStyle(fontSize: 18.0),
//   //                 ),
//   //                 Text(
//   //                   "ON",
//   //                   style: TextStyle(fontSize: 18.0),
//   //                 ),
//   //               ],
//   //               isSelected: _selections,
//   //               onPressed: (int index) {},
//   //               //selectedColor: Colors.blue,
//   //               borderRadius: BorderRadius.circular(22.0),
//   //               borderWidth: 5,
//   //               borderColor: Colors.blue,
//   //             ),
//   //           ],
//   //         );
//   //       });
//   // }

//   createAlertDialogPassword(BuildContext context) {
//     return showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: Text("Reset password",
//                 style: TextStyle(fontWeight: FontWeight.bold)),
//             content: Text(
//               "\nCheck your email to reset your password!",
//               style: TextStyle(fontSize: 20.0),
//             ),
//             actions: <Widget>[
//               MaterialButton(
//                   elevation: 5.0,
//                   child: Text(
//                     "OK",
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18.0,
//                     ),
//                   ),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   }),
//             ],
//           );
//         });
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text(
//           "My Profile",
//           style: TextStyle(
//             fontSize: 23,
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: ListView(
//         children: <Widget>[
//           SizedBox(height: 20),
//           // Obx( () => CircleAvatar(
//           //   child: Padding(
//           //     padding: const EdgeInsets.only(top: 85, left: 100),
//           //     // child: IconButton(
//           //     //   //highlightColor: Colors.grey,
//           //     //   color: Colors.grey[600],
//           //     //   //focusColor: Colors.grey[600],
//           //     //   icon: Icon(
//           //     //     Icons.mode_edit,
//           //     //     size: 30,
//           //     //   ),
//           //     //   onPressed: () {},
//           //     // ),
//           //   ),
//           //   radius: 70,
//           //   backgroundImage: controller.myUser.value.imageURL==""?
//           //   AssetImage("assets\\blank-profile-picture")
//           //   : NetworkImage(controller.myUser.value.imageURL)
//           //   ,

//           //   backgroundColor: Colors.blue,
//           // )),
//           //
//           Center(
//             child: CircleAvatar(
//                   radius: 70,
//                   backgroundImage: AssetImage("assets/images/loading.gif"),
//                   child: CircleAvatar(
//                     backgroundColor: Colors.transparent,
//                     radius: 70,
//                     // backgroundImage: NetworkImage(
//                     //   // controller.myUser.value.imageURL,
//                     // ),
//                   ),
//                   // backgroundColor: Colors.blue,
//                 ),
//           ),

//           TextButton.icon(
//               onPressed: () async {
//                 pickedImage = await picker.getImage(
//                     source: ImageSource.gallery, imageQuality: 50);
//                 setState(() async {
//                   if (pickedImage != null) {
//                     pickedImageFile = File(pickedImage.path);
//                     String s = pickedImage.hashCode.toString();
//                     final ref = FirebaseStorage.instance
//                         .ref()
//                         .child("profiles")
//                         .child("$s.jpg");
//                     await ref.putFile(pickedImageFile);
//                     String imageURL = await ref.getDownloadURL();
//                     controller.myUser.value.imageURL = imageURL;
//                     FirebaseFirestore.instance
//                         .collection("users")
//                         .doc(controller.myUser.value.uid)
//                         .update({"imageURL": imageURL});
//                   } else {
//                     print("No image was picked siiiiiiiiiiiiiiiiiiiiiiiiiiii");
//                   }
//                 });
//               },
//               icon: Icon(Icons.image),
//               label: Text("Change image")),
//           SizedBox(height: 20),
//           Center(
//             child: Container(
//               child: Obx(
//                 () => Text(
//                   "${controller.myUser.value.name}",
//                   style: TextStyle(
//                     fontSize: 25,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 5),
//           // Center(
//           //   child: Container(
//           //     child: Obx(
//           //       () => Text(
//           //         "${controller.myUser.value.email}",
//           //         style: TextStyle(
//           //           fontSize: 20,
//           //           color: Colors.blue[200],
//           //           fontWeight: FontWeight.bold,
//           //         ),
//           //       ),
//           //     ),
//           //   ),
//           // ),
//           Padding(
//             padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//             child: Container(
//               padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(20)),
//                   //color: Colors.yellow[100],
//                   border: Border.all(
//                     color: Colors.grey[400],
//                     // style: border_style_rounded,
//                   )),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Row(
//                     children: <Widget>[
//                       Text(
//                         " My Balance:  ",
//                         style: TextStyle(
//                           fontSize: AdaptiveTextSize()
//                               .getadaptiveTextSize(context, 20),
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Obx(
//                         () => Text(
//                           "$counter \$",
//                           style: TextStyle(
//                             fontSize: 23,
//                             color: Colors.black87,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: <Widget>[
//                       // IconButton(
//                       //     //highlightColor: Colors.grey,
//                       //     color: Colors.blue,
//                       //     icon: Icon(
//                       //       Icons.remove_circle,
//                       //       size: 30,
//                       //     ),
//                       //     onPressed: () {
//                       //       counter--;
//                       //     }),
//                       IconButton(
//                           //highlightColor: Colors.grey,
//                           color: Colors.blue,
//                           icon: Icon(
//                             Icons.add_circle,
//                             size: 30,
//                           ),
//                           onPressed: () {
//                             counter++;
//                           }),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           InkWell(
//             onTap: () {
//               Get.to(AllQuestions());
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Card(
//                 shape: StadiumBorder(
//                   //Card with stadium border
//                   side: BorderSide(
//                     color: Colors.blue,
//                     width: 2.0,
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(children: <Widget>[
//                     SizedBox(
//                       width: 7,
//                     ),
//                     Icon(
//                       Icons.live_help,
//                       color: Colors.blue,
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         Get.to(AllQuestions());
//                       },
//                       child: Text(
//                         "My Questions",
//                         style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ]),
//                 ),
//               ),
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               // createAlertDialogPassword(context);
//               Get.to(ResetScreen());
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Card(
//                 shape: StadiumBorder(
//                   //Card with stadium border
//                   side: BorderSide(
//                     color: Colors.blue,
//                     width: 2.0,
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                       //Padding: EdgeInsets.all(value)
//                       //mainAxisAlignment: MainAxisAlignment.,

//                       children: <Widget>[
//                         SizedBox(
//                           width: 7,
//                         ),
//                         Icon(
//                           Icons.lock,
//                           color: Colors.blue,
//                         ),
                       
//                         TextButton(
//                             child: Text(
//                               "Password and Security",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             onPressed: () {
//                               Get.to(ResetScreen());
//                             },
//                           ),
                        
//                       ]),
//                 ),
//               ),
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               createAlertDialogAboutApp(context);
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Card(
//                 shape: StadiumBorder(
//                   //Card with stadium border
//                   side: BorderSide(
//                     color: Colors.blue,
//                     width: 2.0,
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                       //Padding: EdgeInsets.all(value)
//                       //mainAxisAlignment: MainAxisAlignment.,

//                       children: <Widget>[
//                         SizedBox(
//                           width: 7,
//                         ),
//                         Icon(
//                           Icons.info,
//                           color: Colors.blue,
//                         ),
//                          TextButton(
//                               child: Text(
//                                 "About App",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               onPressed: () {
//                                 createAlertDialogAboutApp(context);
//                               }),
                        
//                       ]),
//                 ),
//               ),
//             ),
//           ),

//           InkWell(
//             onTap: () {
//               createAlertDialogContactUs(context);
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Card(
//                 shape: StadiumBorder(
//                   //Card with stadium border
//                   side: BorderSide(
//                     color: Colors.blue,
//                     width: 2.0,
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     //Padding: EdgeInsets.all(value)
//                     //mainAxisAlignment: MainAxisAlignment.,

//                     children: <Widget>[
//                       SizedBox(
//                         width: 7,
//                       ),
//                       Icon(
//                         Icons.contact_phone,
//                         color: Colors.blue,
//                       ),
//                       // TextButton(
//                       //   onPressed: () {},
//                       //   child:
//                          TextButton(
//                           child: Text(
//                             "Contact Us",
//                             style: TextStyle(
//                               fontSize: 20,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           onPressed: () {
//                             createAlertDialogContactUs(context);
//                           },
//                         ),
                      
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class AdaptiveTextSize {
//   const AdaptiveTextSize();

//   getadaptiveTextSize(BuildContext context, dynamic value) {
//     // 720 is medium screen height
//     return (value / 720) * MediaQuery.of(context).size.height;
//   }
// }