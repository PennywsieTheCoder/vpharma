import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../home_dashboard.dart';

class DiagnosisPage extends StatefulWidget {
  const DiagnosisPage({Key? key}) : super(key: key);

  @override
  _DiagnosisPageState createState() => _DiagnosisPageState();
}

class _DiagnosisPageState extends State<DiagnosisPage> {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF9800),
        title: Text(
          'TAKE YOUR DIAGNOSIS HERE',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'VarelaRound',
              fontSize: 19,
              fontWeight: FontWeight.w300),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeDashboard()));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/backg3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(30),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextField(
                  cursorColor: const Color(0xFFFF9800),
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'VarelaRound',
                      fontSize: 19),
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Enter your symptoms',
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(color: Colors.grey.shade300, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                          color: const Color(0xFFFF9800), width: 2.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Material(
                    color: const Color(0xFFFF9800),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    elevation: 7.0,
                    child: MaterialButton(
                      onPressed: () {},
                      height: 60.0,
                      child: Text(
                        'Submit Symptoms',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'VarelaRound'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
