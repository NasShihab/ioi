import 'package:flutter/material.dart';
import 'package:ioi/homePage.dart';
import 'package:ioi/provider/bottomNavigationBarProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => bottomNavigationBarProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: homePage(),
      ),
    );
  }
}
