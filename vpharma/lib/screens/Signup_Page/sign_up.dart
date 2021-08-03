import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:vpharma/screens/HomePage/home_dashboard.dart';
import 'package:vpharma/screens/Signup_Page/pharmacist_signup.dart';

class PharmacistLoginPage extends StatefulWidget {
  @override
  _PharmacistLoginPageState createState() => _PharmacistLoginPageState();
}

class _PharmacistLoginPageState extends State<PharmacistLoginPage> {
  final TextEditingController _passwordController = new TextEditingController();
  final GlobalKey<FormState> _formKeyValue = GlobalKey<FormState>();
  late String email;
  late String password;

  Widget _buildEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email ID',
        labelStyle: TextStyle(
          fontSize: 14.0,
          color: Colors.grey.shade400,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Email is required';
        }
        if (!RegExp(
                r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
            .hasMatch(value!)) {
          return 'Please enter a valid email';
        }
        return null;
      },
      onSaved: (value) {
        email = value.toString();
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(
          fontSize: 14.0,
          color: Colors.grey.shade400,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
      ),
      controller: _passwordController,
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Password is required';
        }
        return null;
      },
      onSaved: (value) {
        password = value.toString();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Login Into Your Account',
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'Sign in to get started',
                    style: TextStyle(fontSize: 20.0, color: Colors.redAccent),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ]),
                _buildEmail(),
                SizedBox(
                  height: 10.0,
                ),
                _buildPassword(),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 40.0,
                  child: FlatButton(
                    onPressed: () async {
                      if (!_formKeyValue.currentState!.validate()) {
                        return;
                      }
                      _formKeyValue.currentState!.save();
                      setState(() {});
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeDashboard()));
                    },
                    padding: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF90CAF9),
                              Color(0xffff5f6d),
                              Color(0xFF42C5F5),
                            ]),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        constraints: BoxConstraints(
                          maxWidth: double.infinity,
                          minHeight: 50.0,
                        ),
                        child: Text('Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 40.0,
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () => {},
                    color: Colors.indigo.shade50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Connect with Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account ?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PharmacistSignUpPage();
                        }));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
