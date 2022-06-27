// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ioi/provider/bottomNavigationBarProvider.dart';
import 'package:provider/provider.dart';

import 'faithPage.dart';
import 'meditativePage.dart';

class bottomNavigationBarPage extends StatelessWidget {
   bottomNavigationBarPage({Key? key}) : super(key: key);

  final screens = [
    faithPage(),
    meditativePage(),
    faithPage(),
    meditativePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<bottomNavigationBarProvider>(builder: (context, provider, child){
      return Scaffold(
          bottomNavigationBar: Consumer<bottomNavigationBarProvider>(
            builder: (context, provider, child){
              return Container(
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  iconSize: 30,
                  currentIndex: provider.pcurrentindex,
                  onTap: (int index){
                    provider.updatePcurrentindex(provider.pcurrentindex);
                    provider.pcurrentindex = index;
                  },
                  items: [
                    BottomNavigationBarItem(
                        label: '',
                        icon: Icon(Icons.home_filled, color: Colors.green[400])),
                    BottomNavigationBarItem(
                        label: '',
                        icon: Icon(Icons.apps_outlined, color: Colors.green[400])),
                    BottomNavigationBarItem(
                        label: '',
                        icon: Icon(Icons.favorite_border_outlined,
                            color: Colors.green[400])),
                    BottomNavigationBarItem(
                        label: '',
                        icon: Icon(Icons.person_outline, color: Colors.green[400])),
                  ],
                ),
              );
            },
          ),
          body: SafeArea(
            child: screens[provider.pcurrentindex],
          ));
    });
  }}
