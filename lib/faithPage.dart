import 'package:flutter/material.dart';
import 'package:ioi/meditativePage.dart';

class faithPage extends StatelessWidget {
  const faithPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // int currentIndex = 0;
    // final screens = [
    //   workPage(),
    //   aboutPage(),
    // ];
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 180,
              child: AppBar(
                title: Text(
                  'Faith / Imaan',
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
                    padding: EdgeInsetsDirectional.only(bottom: 80),
                    child: Container(
                      margin: EdgeInsetsDirectional.only(start: 40, end: 40),
                      child: Text(
                        'Faith is the fuel for your life\'s journey. Meditative on it to recharge your faith.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 120),
                  child: Container(
                    margin: EdgeInsetsDirectional.only(start: 20, end: 20),
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      margin: EdgeInsetsDirectional.only(start: 30, end: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 60),
                          Text(
                            'مرحبا رفرفة',
                            style: TextStyle(fontSize: 35),
                          ),
                          Text(
                            'The faithful are also those who are true to their trusts and covenants',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(
                            'The Quran: Surah 70, Verse 32',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.green[700]),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsetsDirectional.only(start: 40, end: 40),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => meditativePage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green[500],
                        minimumSize: Size(double.infinity, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    child: Text('Meditate On Next Ayat',style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
