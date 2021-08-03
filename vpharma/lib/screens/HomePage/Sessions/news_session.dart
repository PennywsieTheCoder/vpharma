import 'package:flutter/material.dart';
import 'package:vpharma/screens/HomePage/home_dashboard.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              //width: MediaQuery.of(context).size.width,
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
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeDashboard()));
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),

                  Container(
                    height: 200,
                    width: double.infinity,
                    padding: const EdgeInsets.all(0.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.white10),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
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
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  //Todo: DIAGNOSIS, THERAPY AND UPLOAD
                  //THIS CONTAINER CONTAINS THE SCROLL OF DIAGNOSIS, THERAPY AND UPLOAD
                  Container(
                    height: 620,
                    // height: MediaQuery.of(context).size.height,
                    // width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(0.0),
                    padding: const EdgeInsets.all(0.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white10),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.black),
                    child: ListView(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //TODO: NEWS ONE
                            GestureDetector(
                              onTap: _launchURL,
                              child: Container(
                                height: 300,
                                width: double.infinity,
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white10),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image: AssetImage('images/news1a.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'ACCRA (Reuters) - Ghana hopes to receive over 18 million doses of COVID-19 vaccines before'
                                    ' October as it struggles to contain a third wave of infections, President Nana Akufo-Addo said in a speech on Sunday. '
                                    'Cases of COVID-19 are rising fast in parts of West Africa, in part due to the arrival of the Delta coronavirus variant which is considered more transmissible than other variants.....',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: 'VarelaRound',
                                        fontWeight: FontWeight.bold),
                                    maxLines: 100,
                                  ),
                                ),
                              ),
                            ),

                            //TODO: NEWS TWO
                            GestureDetector(
                              onTap: _launch2URL,
                              child: Container(
                                height: 300,
                                width: double.infinity,
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white10),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image: AssetImage('images/news2.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'The Ministry of Transport, Ministry of Health and the Board of Directors '
                                    'of Greater Accra Passenger Transport Executive (GAPTE)'
                                    ' are rolling Aayalolo Buses to provide transport services on essential health workers on the underlisted routes'
                                    '                  Click to read more...',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: 'VarelaRound',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            //TODO: NEWS THREE
                            GestureDetector(
                              onTap: _launch3URL,
                              child: Container(
                                height: 300,
                                width: double.infinity,
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white10),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image: AssetImage('images/news3.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Implementing programme based budgeting in Ghana’s health sector.'
                                    'Much like overall health financing, '
                                    'Ghana’s budgeting process has undergone a lot of changes in recent years.'
                                    ' First in 1998, Ghana’s budget transitioned from input- based to activity-based as a way to better link strategic objectives to budgeted activities.  ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: 'VarelaRound',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),

                            //TODO: NEWS FOUR
                            GestureDetector(
                              onTap: _launch4URL,
                              child: Container(
                                height: 300,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white10),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image: AssetImage('images/fda.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.all(3.0),
                                child: Center(
                                  child: Text(
                                    'FDA EMBARKS ON NATIONAL BLOOD DONATION'
                                    ' EXERCISE TO RESTOCK THE NATIONAL BLOOD BANK'
                                    '                                       '
                                    '            The Management and Staff of the Food and Drugs Authority (FDA) '
                                    ' in collaboration with the National Blood Donors Association, Ghana (NABDAG) on Friday, embarked on a Voluntary National Blood Donation exercise. ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: 'VarelaRound',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            //TODO: NEWS FIVE
                            GestureDetector(
                              onTap: _launch5URL,
                              child: Container(
                                height: 300,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white10),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image: AssetImage('images/covidnews.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.all(3.0),
                                child: Center(
                                  child: Text(
                                    'GET ALL THE RELATED INFORMATION YOU NEED ON CORONAVIRUS'
                                    '                                                        '
                                    'Novel Coronavirus (COVID-19)'
                                    ' The COVID-19 pandemic caused by the novel coronavirus (SARS-CoV-2)'
                                    ' continues to reshape the globe. Stay current with the latest updates essential for healthcare professionals.',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: 'VarelaRound',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            //TODO: NEWS SIX
                            GestureDetector(
                              onTap: _launch4URL,
                              child: Container(
                                height: 300,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white10),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image: AssetImage('images/news6.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.all(3.0),
                                child: Center(
                                  child: Text(
                                    'EVERYTHING YOU NEED TO KNOW ABOUT MEDICATION'
                                    '                                       '
                                    '           Medication Administration: Why It’s Important to Take Drugs the Right Way '
                                    'We take medications to diagnose, treat, or prevent illness. '
                                    'They come in lots of different forms and we take them in many different ways. You may take a drug yourself, or a healthcare provider may give it to you.',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//TODO: NEWS ONE URL
_launchURL() async {
  const url =
      'https://www.usnews.com/news/world/articles/2021-07-25/ghana-aims-to-receive-18-million-covid-shots-by-october';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//TODO: NEWS TWO URL
_launch2URL() async {
  const url = 'https://www.moh.gov.gh/transport-services-for-health-workers/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//TODO: NEWS THREE URL
_launch3URL() async {
  const url = 'https://www.who.int/publications/i/item/9789240025622';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//TODO: NEWS FOUR URL
_launch4URL() async {
  const url = 'http://www.fdaghana.gov.gh/news-media.php?page=99';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//TODO: NEWS FIVE URL
_launch5URL() async {
  const url =
      'https://www.medscape.com/resource/coronavirus?src=ban_strip_mscpmrk_covid19';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//TODO: NEWS SIX URL
_launch6URL() async {
  const url = 'https://www.healthline.com/health/administration-of-medication';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
