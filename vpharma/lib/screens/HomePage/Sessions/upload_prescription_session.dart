import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../home_dashboard.dart';
import 'package:permission_handler/permission_handler.dart';

class UploadPrescription extends StatefulWidget {
  const UploadPrescription({Key? key}) : super(key: key);

  @override
  _UploadPrescriptionState createState() => _UploadPrescriptionState();
}

class _UploadPrescriptionState extends State<UploadPrescription> {
  final _auth = FirebaseAuth.instance;

  Future _getStoragePermission() async {
    if (await Permission.storage.request().isGranted) {
      setState(() {
        var permissionGranted = true;
      });
    } else if (await Permission.storage.request().isPermanentlyDenied) {
      await openAppSettings();
    } else if (await Permission.storage.request().isDenied) {
      setState(() {
        var permissionGranted = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF9800),
        title: Text(
          'UPLOAD PRESCRIPTION',
          style: TextStyle(fontFamily: 'VarelaRound'),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeDashboard()));
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 150, 15, 0),
          child: Container(
            height: 450,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 350,
                ),
                FloatingActionButton.extended(
                  elevation: 2,
                  icon: Icon(
                    Icons.upload_file,
                    size: 40,
                  ),
                  label: Text('Upload prescription'),
                  onPressed: () {
                    _getStoragePermission();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
