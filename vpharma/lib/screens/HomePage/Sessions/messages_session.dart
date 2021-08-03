import 'package:flutter/material.dart';
import 'package:vpharma/screens/HomePage/home_dashboard.dart';
import '../../../constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  //FirebaseUser loggedInUser;

  /*void getCurrentUser() async {
    final user = await _auth.currentUser;
    if(user ! = null)
      {
       loggedInUser = user;
      }
  }
*/

  late String patientMessage;

  /*
  void getMessage() async {
    final pmessages = await _firestore.collection('patient messages').get();
    for (var message in pmessages.docs) {
      print(message.data());
    }
  }
*/

  void messagesStream() async {
    await for (var snapshot
        in _firestore.collection('patient messages').snapshots()) {
      for (var snapshot in snapshot.docs) {
        print(snapshot.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                messagesStream();
                //_auth.signOut();
                //Navigator.push(
                //context,
                //MaterialPageRoute(builder: (context) => HomeDashboard()),
                //);
              }),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            /*StreamBuilder<QuerySnapshot>(
              stream: _firestore.collection('patient messages').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final messages = snapshot.data!.docs;
                  List<Text> messageWidget = [];
                  for (var message in messages) {
                   // final patientMessage = message.data['patient texts'];
                  }
                }
              },
            ),*/
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        patientMessage = value;
                        //Do something with the user input.
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      _firestore
                          .collection('patient messages')
                          .add({'patient texts': patientMessage});
                      //Implement send functionality.
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
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
