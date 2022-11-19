
// class HomeWidget extends StatefulWidget {
//   const HomeWidget({Key key}) : super(key: key);

//   @override
//   _HomeWidgetState createState() => _HomeWidgetState();
// }

// class _HomeWidgetState extends State<HomeWidget> {
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: Color(0xFFF1F4F8),
//       appBar: AppBar(
//         backgroundColor: Color(0xFFF1F4F8),
//         automaticallyImplyLeading: false,
//         title: Container(
//                   padding: EdgeInsets.only(bottom: 6, left: 6),


//           child: Text(
//             'Dashboard',

//             style: TextStyle(
//                 color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),

//             // style: Theme.of(context).textTheme.bodyMedium,
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
//             child: Container(
//               width: 60,
//               height: 60,
//               clipBehavior: Clip.antiAlias,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//               ),
//               child: Image.network(
//                 'https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//         ],
//         centerTitle: false,
//         elevation: 0,
//       ),
//       body: GestureDetector(
//         onTap: () => FocusScope.of(context).unfocus(),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
//                 child: Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 4,
//                         color: Color(0x25090F13),
//                         offset: Offset(0, 2),
//                       )
//                     ],
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 16),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Hello,',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.normal,
//                               fontSize: 20),
//                         ),
//                         Text(
//                           'Below are your daily energy cost.',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.normal,
//                               fontSize: 20),
//                         ),
//                         Divider(
//                           height: 24,
//                           thickness: 2,
//                           color: Color(0xFFF1F4F8),
//                         ),
//                         Row(
//                           mainAxisSize: MainAxisSize.max,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Expanded(
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.max,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'Days Tracked',
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.normal,
//                                         fontSize: 20),
//                                   ),
//                                   Container(
//                                     padding: EdgeInsets.all(8),
//                                     child: Text(
//                                       '3',
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontWeight: FontWeight.normal,
//                                           fontSize: 50),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Expanded(
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.max,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'Avg. Cost',
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.normal,
//                                         fontSize: 20),
//                                   ),
//                                   Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         padding: EdgeInsets.all(8),
//                                         child: Text(
//                                           '4.6',
//                                           style: TextStyle(
//                                               color: Colors.black,
//                                               fontWeight: FontWeight.normal,
//                                               fontSize: 50),
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsets.all(2),
//                                         child: Icon(
//                                           Icons.euro_sharp,
//                                           color: Color(0xFF57636C),
//                                           size: 24,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
//                 child: Container(
//                   padding: EdgeInsets.only(bottom: 12, left: 6),
//                   child: Text('Our Services: ',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       )),
//                 ),
//               ),

// //        Container(
// //          child: GridView.count(
// //           shrinkWrap: true,
// //   primary: false,
// //   padding: const EdgeInsets.all(20),
// //   crossAxisSpacing: 10,
// //   mainAxisSpacing: 10,
// //   crossAxisCount: 2,
// //   children: <Widget>[
// //     Container(
// //       padding: const EdgeInsets.all(8),
// //       color: Colors.teal[100],
// //       child: const Text("He'd have you all unravel at the"),
// //     ),
// //     Container(
// //       padding: const EdgeInsets.all(8),
// //       color: Colors.teal[200],
// //       child: const Text('Heed not the rabble'),
// //     ),
// //     Container(
// //       padding: const EdgeInsets.all(8),
// //       color: Colors.teal[300],
// //       child: const Text('Sound of screams but the'),
// //     ),
// //     Container(
// //       padding: const EdgeInsets.all(8),
// //       color: Colors.teal[400],
// //       child: const Text('Who scream'),
// //     ),
// //     Container(
// //       padding: const EdgeInsets.all(8),
// //       color: Colors.teal[500],
// //       child: const Text('Revolution is coming...'),
// //     ),
// //     Container(
// //       padding: const EdgeInsets.all(8),
// //       color: Colors.teal[600],
// //       child: const Text('Revolution, they...'),
// //     ),
// //   ],
// // ),
// //        ),

//               GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                   // childAspectRatio: (1 / 1),
//                 ),
//                 itemBuilder: (context, index) {
//                   // Container(height: 20, child: Image.asset('assets/images/icons/doctor.png', fit: BoxFit.cover,)),
//                   return GestureDetector(
//                     // onTap: () {
//                     //   gridHandler(index);
//                     // },
//                     child: Container(
//                       // height: MediaQuery.of(context).size.height*0.2,
//                       padding: const EdgeInsets.all(0.0),
//                       child: Card(
//                         margin: index == 0 || index == 3
//                             ? EdgeInsets.only(left: 14, bottom: 12, right: 7)
//                             : index == 2 || index == 5
//                                 ? EdgeInsets.only(
//                                     left: 7,
//                                     bottom: 12,
//                                     right: 14,
//                                   )
//                                 : EdgeInsets.only(
//                                     bottom: 12, left: 7, right: 7),

//                         // ? const EdgeInsets.only(top: 10.0, left: 4, right: 4, bottom: 4)
//                         // : const EdgeInsets.all(4.0),

//                         // elevation: 18,
//                         // padding: EdgeInsets.all(0)
//                         color: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Container(
//                           padding: const EdgeInsets.only(top: 2.0),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Container(
//                                 height:
//                                     (MediaQuery.of(context).size.height) * 0.1,
//                                 // padding: EdgeInsets.only(top: 0),
//                                 child: Container(
//                                     // margin: 0,
//                                     // child: ClipRRect(
//                                     // borderRadius: BorderRadius.circular(0.0),
//                                     child: Image.asset(
//                                   categoriesListIcons[index],
//                                   // fit: BoxFit.contain,
//                                   // height: MediaQuery.of(context).size.height * 0.1,
//                                   // width: MediaQuery.of(context).size.width * 0.4,
//                                 )
//                                     // ),
//                                     ),
//                               ),
//                               TextButton(
//                                 style: TextButton.styleFrom(
//                                   padding: EdgeInsets.zero,
//                                   minimumSize: Size(50, 30),
//                                   tapTargetSize:
//                                       MaterialTapTargetSize.shrinkWrap,
//                                   // alignment: Alignment.centerLeft
//                                 ),
//                                 onPressed: () {
//                                   // gridHandler(index);
//                                 },
//                                 child: Text(
//                                   categoriesList[index],
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 13),
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//                 itemCount: categoriesList.length,
//                 shrinkWrap: true,
//               ),

//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 4, 0, 0),
//                 child: Container(
//                   padding: EdgeInsets.only(bottom: 4, left: 6),
//                   child: Text('Real Estate  News',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       )),
//                 ),
//               ),

//               ListView.builder(
//                 itemCount: titles.length,
//                 // padding: EdgeInsets.all(8),
//                 primary: false,
//                 shrinkWrap: true,
//                 scrollDirection: Axis.vertical,
//                 itemBuilder: (BuildContext context, int index) {
//                   return
//                       // Column(
//                       // children: [
//                       Container(
//                     padding: EdgeInsetsDirectional.fromSTEB(22, 4, 12, 10),
//                     child: Container(
//                       width: MediaQuery.of(context).size.width,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 3,
//                             color: Color(0x411D2429),
//                             offset: Offset(0, 1),
//                           )
//                         ],
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.only(left:8, top:0),
//                         child:
//                             // Row(
//                             // mainAxisSize: MainAxisSize.max,
//                             // children: [
//                             Expanded(
//                           child: Container(
//                             padding: EdgeInsetsDirectional.fromSTEB(
//                                 8, 6, 8, 6),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text('${titles[index]}',
//                                     style: TextStyle(
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 18,
//                                     )),
//                                 Container(
//                                   padding:
//                                       EdgeInsetsDirectional.fromSTEB(
//                                           4, 4, 8, 4),
//                                   child: Text('${news[index]}',
//                                       textAlign: TextAlign.start,
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.normal,
//                                         fontSize: 12,
//                                       )),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         // Column(
//                         //   mainAxisSize: MainAxisSize.max,
//                         //   mainAxisAlignment:
//                         //       MainAxisAlignment.spaceBetween,
//                         //   crossAxisAlignment: CrossAxisAlignment.end,
//                         //   children: [
//                         //     Padding(
//                         //       padding: EdgeInsetsDirectional.fromSTEB(
//                         //           0, 4, 0, 0),
//                         //       child: Icon(
//                         //         Icons.chevron_right_rounded,
//                         //         color: Color(0xFF57636C),
//                         //         size: 24,
//                         //       ),
//                         //     ),
//                         //   ],
//                         // ),
//                         // ],
//                         // ),
//                       ),
//                     ),
//                   );
//                   // ],
//                   // );
//                 },
//                 // separatorBuilder: (BuildContext context, int index) => const Divider(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
