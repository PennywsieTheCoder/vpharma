import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpharma/screens/HomePage/home_dashboard.dart';

class DrugCatalogue extends StatefulWidget {
  const DrugCatalogue({Key? key}) : super(key: key);

  @override
  _DrugCatalogueState createState() => _DrugCatalogueState();
}

class _DrugCatalogueState extends State<DrugCatalogue> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
              child: const Text('DRUG STORE'),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeDashboard()),
                  );
                },
                icon: Icon(Icons.arrow_back_ios),
                tooltip: 'Back to home page',
              )
            ],
          ),
          body: Container(
            margin: EdgeInsets.all(5),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/backg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
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
