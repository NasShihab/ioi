import 'package:flutter/material.dart';

class libraryPage extends StatelessWidget {
  const libraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 140,
              child: AppBar(
                title: Text(
                  'Nasheed Library',
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
                    padding: EdgeInsetsDirectional.only(bottom: 70),
                    child: Container(
                      margin: EdgeInsetsDirectional.only(start: 40, end: 40),
                      child: Text(
                        'Select a tittle to play Nasheed Library',
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
            Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 120),
                  child: Container(
                      margin: EdgeInsetsDirectional.only(start: 40, end: 40),
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Container(
                            height: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 11,
                                  child: Container(
                                    height: double.infinity,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(Colors.grey[900]),
                                        ),
                                        onPressed: () {},
                                        child: Text('Recently Played')),
                                  ),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: Container(
                                    height: double.infinity,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(Colors.grey[800]),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(18.0),
                                                )
                                            )
                                        ),
                                        onPressed: () {},
                                        child: Text('Trending')),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                ),
                SizedBox(height: 10),
                Flexible(
                  child: Container(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 14,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ListTile(
                                leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset('images/play.png')),
                                title: Text(
                                  'Tala al Badru ALayna',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                trailing: Icon(Icons.more_vert),
                                subtitle: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Rizwan Qadri'),
                                    Text(
                                      '4.30',
                                      style:
                                          TextStyle(color: Colors.green[500]),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 2,
                              ),
                            ],
                          );
                        }),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
