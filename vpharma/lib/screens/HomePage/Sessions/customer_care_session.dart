import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../home_dashboard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomerCarePage extends StatefulWidget {
  const CustomerCarePage({Key? key}) : super(key: key);

  @override
  _CustomerCarePageState createState() => _CustomerCarePageState();
}

class _CustomerCarePageState extends State<CustomerCarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 300,
        backgroundColor: const Color(0xFFFF9800),
        title: Text(
          'CUSTOMER CARE SERVICE',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'VarelaRound',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeDashboard()));
          },
          child: Icon(
            Icons.home,
            color: Colors.black,
            size: 48,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Container(
                height: 120,
                width: double.infinity,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          child: Icon(
                            Icons.phone,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Telephone Number: 0501009003',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'VarelaRound'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                width: double.infinity,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          child: Icon(
                            Icons.phone,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Toll free line: 0800 1008880',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'VarelaRound'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 120,
                width: double.infinity,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          child: Icon(
                            Icons.email,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Email: vpharmapharmaceuticals@gmail.com',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'VarelaRound'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.view_headline_outlined,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.account_balance,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
