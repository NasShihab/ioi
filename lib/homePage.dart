import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ioi/faithPage.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // ekhane text box er size disi
    double textboxPadding = 14;
    // ekhane button ar box er radious disi .. rounded er jonne
    double buttonRadiuss = 12;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/bgr1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            padding: EdgeInsetsDirectional.only(start: 40, end: 40),
            child: Column(
              children: [
                SizedBox(height: 40),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 200,
                        spreadRadius: 100,
                        offset: Offset(0, -80),
                      )
                    ],
                  ),
                  // Part 1
                  child: Column(
                    children: [
                      Text(
                        'Greetings of peace!',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Login to get started',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.normal,
                            color: Colors.green[900]),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100),
                // Email
                Container(
                  child: CupertinoTextField(
                    padding: EdgeInsetsDirectional.all(textboxPadding),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(buttonRadiuss)),
                    textAlign: TextAlign.center,
                    placeholder: 'Email',
                    placeholderStyle: TextStyle(color: Colors.blueGrey),
                  ),
                ),
                SizedBox(height: 20),
                // Password
                Container(
                  child: CupertinoTextField(
                    padding: EdgeInsetsDirectional.all(textboxPadding),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(buttonRadiuss)),
                    textAlign: TextAlign.center,
                    placeholder: 'Password',
                    placeholderStyle: TextStyle(color: Colors.blueGrey),
                  ),
                ),
                SizedBox(height: 30),
                // Login Button
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => faithPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[700],
                      minimumSize: Size(double.infinity, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(buttonRadiuss),
                      )
                    ),
                    child: Text('Login with Email'),
                  ),
                ),
                SizedBox(height: 20),
                // Social Login Part
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Container(
                          width: 100,
                          height: 50,
                          child: Divider(
                            endIndent: 10,
                            height: 10,
                            thickness: 2,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text('SOCIAL lOGIN', style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15
                      ),),
                      Flexible(
                        child: Container(
                          width: 100,
                          height: 50,
                          child: Divider(
                            indent: 10,
                            height: 10,
                            thickness: 2,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Login With Google
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => faithPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue[600],
                        minimumSize: Size(double.infinity, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(buttonRadiuss),
                        )
                    ),
                    child: Text('Login with Google'),
                  ),
                ),
                SizedBox(height: 20),
                // Login with Facebook
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => faithPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue[900],
                        minimumSize: Size(double.infinity, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(buttonRadiuss),
                        )
                    ),
                    child: Text('Login with Facebook'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
