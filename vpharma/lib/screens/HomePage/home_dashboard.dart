import 'package:flutter/material.dart';
import 'package:vpharma/Drug%20store/drug_catalogue.dart';
import 'package:vpharma/main.dart';
import 'package:vpharma/screens/HomePage/Sessions/about_session.dart';
import 'package:vpharma/screens/HomePage/Sessions/customer_care_session.dart';
import 'package:vpharma/screens/HomePage/Sessions/messages_session.dart';
import 'package:vpharma/screens/HomePage/Sessions/news_session.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vpharma/screens/HomePage/Sessions/upload_prescription_session.dart';

import 'Sessions/diagnostic_session.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({Key? key}) : super(key: key);

  @override
  _HomeDashboardState createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 870,
              //height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/backg3.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'WELCOME ',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'ComfortaaRegular',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'TO VPHARMA',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'ComfortaaRegular',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.account_circle,
                          size: 45,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        tooltip: 'NOTIFICATION',
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_active,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        tooltip: 'LOGOUT',
                        onPressed: () {
                          _auth.signOut();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                        icon: Icon(
                          Icons.logout,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  //TODO: SCROLL FOR COVID MESSAGE AND ABOUT
                  Container(
                    height: 150,
                    width: double.infinity,
                    padding: const EdgeInsets.all(10.0),
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.white10),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NewsFeed()));
                                print('TIN PRESSED');
                              },
                              child: Container(
                                height: 200,
                                width: 150,
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image: AssetImage('images/covidnews.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'NEWS',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: 'VarelaRound',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChatScreen()));
                                print('TIN PRESSED');
                              },
                              child: Container(
                                height: 200,
                                width: 150,
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image: AssetImage('images/chatlogo.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'MESSAGES',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: 'VarelaRound',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DrugCatalogue()));
                                print('TIN PRESSED');
                              },
                              child: Container(
                                height: 200,
                                width: 150,
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image: AssetImage('images/chatlogo.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'STORE',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: 'VarelaRound',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AboutUs()));
                                print('TIN PRESSED');
                              },
                              child: Container(
                                height: 200,
                                width: 150,
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image: AssetImage('images/about1.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'ABOUT VPHARMA',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: 'VarelaRound',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  //Todo: DIAGNOSIS, THERAPY AND UPLOAD
                  //THIS CONTAINER CONTAINS THE SCROLL OF DIAGNOSIS, THERAPY AND UPLOAD
                  Container(
                    height: 500,
                    width: double.infinity,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white10),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.black),
                    child: ListView(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DiagnosisPage()));
                                print('TIN PRESSED');
                              },
                              child: Container(
                                height: 120,
                                width: double.infinity,
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white10),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('images/diagnosislogo.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'DIAGNOSIS',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontFamily: 'VarelaRound',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChatScreen()));
                                print('Therapy PRESSED');
                              },
                              child: Container(
                                height: 120,
                                width: double.infinity,
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white10),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image: AssetImage('images/therapylogo.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'THERAPY SESSION',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontFamily: 'VarelaRound',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            UploadPrescription()));
                              },
                              child: Container(
                                height: 120,
                                width: double.infinity,
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white10),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image: AssetImage('images/upload2.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'UPLOAD PRESCRIPTION',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontFamily: 'VarelaRound',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CustomerCarePage()));
                              },
                              child: Container(
                                height: 120,
                                width: double.infinity,
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white10),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image: AssetImage('images/customer.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'HELP / CUSTOMER CARE',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontFamily: 'VarelaRound',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
