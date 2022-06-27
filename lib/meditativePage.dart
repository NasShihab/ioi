import 'package:flutter/material.dart';

class meditativePage extends StatelessWidget {
  const meditativePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddingHeight = 160;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // appbar My AppBar
            Container(
              height: 180,
              child: AppBar(
                title: Text(
                  'Meditative\nQuranic Verses',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45))),
                centerTitle: true,
                backgroundColor: Colors.green[500],
                leading: IconButton(
                  icon: Icon(Icons.menu_rounded),
                  onPressed: () {},
                ),
                actions: [
                  Container(
                    padding: EdgeInsetsDirectional.only(end: 10),
                    child: Icon(Icons.notification_important_outlined),
                  ),
                ],
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(20),
                  child: Container(
                    padding: EdgeInsetsDirectional.only(bottom: 100),
                    child: Container(
                      margin: EdgeInsetsDirectional.only(start: 40, end: 40),
                      child: Text(
                        'Let the Signs of Allah guide you',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: 120),
                    child: Container(
                      margin: EdgeInsetsDirectional.only(start: 20, end: 20),
                      height: paddingHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.green[100],
                          image: DecorationImage(
                              image: AssetImage("images/bg5.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        padding: EdgeInsetsDirectional.only(start: 20, end: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Faith / Imaan',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Faith is the fuel for your life\'s journey. Meditative on it to recharge yOur faith.',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Text(
                              'No of Ayat in Collection: 10',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: 20),
                    child: Container(
                      margin: EdgeInsetsDirectional.only(start: 20, end: 20),
                      height: paddingHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.green[100],
                          image: DecorationImage(
                              image: AssetImage("images/bg3.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        padding: EdgeInsetsDirectional.only(start: 20, end: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Love / Hubb',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Love is the the essence of everything. Meditative on these Ayat of Love to return to the essence.',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Text(
                              'No of Ayat in Collection: 7',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: 20),
                    child: Container(
                      margin: EdgeInsetsDirectional.only(start: 20, end: 20),
                      height: paddingHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.green[100],
                          image: DecorationImage(
                              image: AssetImage("images/bg4.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        padding: EdgeInsetsDirectional.only(start: 20, end: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Patience / Sabr',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Patience is remaining attached to the Real. Meditate on these Ayat when you feel the absence of patience.',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Text(
                              'No of Ayatin Caikeetion: 12',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
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
