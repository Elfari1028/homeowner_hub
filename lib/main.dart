import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homeowner_hub/nav_root.dart';

import 'api/api.dart';


// import 'package:readmore/readmore.dart';


final List<String> titles = <String>['Ttile 1', 'Title 2', 'Titlte 3'];
final List<String> news =  <String>['Article 1', 'Article 2', 'Article 3'];


final List<String> categoriesList = [
  "Solar panels",
  "Home decoration",
  "Home repair",
  "Recycling",
  "Rent electric car",
  "Other services"
];

final List<String> categoriesListIcons = [
  "assets/solar.png",
  "assets/decoration.png",
  "assets/repair.png",
  "assets/recycle.png",
  "assets/electric.png",
  "assets/bulb.png"
];
void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.lexendDecaTextTheme(),
        primaryTextTheme: GoogleFonts.lexendDecaTextTheme(),
      ),
      home: NavRootPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
  dynamic data ;


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

  
  @override
  Widget build(BuildContext context) {

  final scaffoldKey = GlobalKey<ScaffoldState>();

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return  Scaffold(
      key: scaffoldKey,
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

            // style: Theme.of(context).textTheme.bodyMedium,
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
              child: Image.asset
            (
              "assets/Malazz.png"
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
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
                        // Text(
                        //   'Hello,',
                        //   style: TextStyle(
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.normal,
                        //       fontSize: 20),
                        // ),
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
                                      '3',
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        child: Text(
                                          '4.6',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 50),
                                        ),
                                      ),
                                      Padding(
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
              ),
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

//        Container(
//          child: GridView.count(
//           shrinkWrap: true,
//   primary: false,
//   padding: const EdgeInsets.all(20),
//   crossAxisSpacing: 10,
//   mainAxisSpacing: 10,
//   crossAxisCount: 2,
//   children: <Widget>[
//     Container(
//       padding: const EdgeInsets.all(8),
//       color: Colors.teal[100],
//       child: const Text("He'd have you all unravel at the"),
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       color: Colors.teal[200],
//       child: const Text('Heed not the rabble'),
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       color: Colors.teal[300],
//       child: const Text('Sound of screams but the'),
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       color: Colors.teal[400],
//       child: const Text('Who scream'),
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       color: Colors.teal[500],
//       child: const Text('Revolution is coming...'),
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       color: Colors.teal[600],
//       child: const Text('Revolution, they...'),
//     ),
//   ],
// ),
//        ),

              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // childAspectRatio: (1 / 1),
                ),
                itemBuilder: (context, index) {
                  // Container(height: 20, child: Image.asset('assets/images/icons/doctor.png', fit: BoxFit.cover,)),
                  return GestureDetector(
                    // onTap: () {
                    //   gridHandler(index);
                    // },
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
                  child: Text('Real Estate  News',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ),
              ),
              if (data!=Null)

              ListView.builder(
                itemCount: titles.length,
                // padding: EdgeInsets.all(8),
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return
                      // Column(
                      // children: [
                      Container(

                    padding: index!=titles.length-1 ? 
                    EdgeInsetsDirectional.fromSTEB(18, 4, 18, 4)
                    :
                    EdgeInsetsDirectional.fromSTEB(18, 4, 18, 18),

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
                        padding: EdgeInsets.only(left:8, top:0),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
}
