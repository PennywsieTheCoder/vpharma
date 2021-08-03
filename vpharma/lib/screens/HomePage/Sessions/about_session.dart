import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpharma/screens/HomePage/home_dashboard.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: const Color(0xFFFF9800),
              title: Center(
                child: const Text('ABOUT VPHARMA'),
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeDashboard()),
                  );
                },
                icon: Icon(Icons.arrow_back_ios),
                tooltip: 'Back to home page',
              )),
          body: Container(
            margin: EdgeInsets.all(5),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    "          OUR VISION            "
                    "To become a global healthcare organization"
                    ' and to be recognized as domestic and internationally integrated healthcare and pharmaceutical company'
                    '           through Innovation, Quality and Competence.',
                    style: TextStyle(),
                    maxLines: 100,
                  ),
                  color: Colors.white,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/vision.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/aim.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    "              OUR AIM             "
                    "    To promote high standards in pharmaceutical product production,"
                    'quality assurance and preparation of compound medicinal prescriptions,'
                    '           pharmaceutical and other appropriate products.',
                    style: TextStyle(),
                    maxLines: 100,
                  ),
                  color: Colors.white,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    "          OUR GOAL            "
                    "      To promote Drug research in all its branches,"
                    'To promote Research and Development of new Drugs in the country.'
                    '          ',
                    style: TextStyle(),
                    maxLines: 100,
                  ),
                  color: Colors.white,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/goal.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/mission.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  child: Text(
                    "          OUR MISSION            "
                    "To uphold our social responsibilities of delivering highest standard"
                    'healthcare services to all segments of society without compromising'
                    '           on our core values of integrity, good ethics and commitment.',
                    style: TextStyle(),
                    maxLines: 100,
                  ),
                ),
              ],
            ),
          )),

      //TODO: THIS CONTAINER CONTAINS THE INFORMATION ON THE ABOUT

      //TODO: END OF THE CONTAINER FRO THE INFORMATION ON ABOUT
    );
  }
}
