import 'package:flutter/cupertino.dart';

class bottomNavigationBarProvider extends ChangeNotifier{

  int pcurrentindex = 0;

  void updatePcurrentindex (int pcurrentindex){
    this.pcurrentindex = pcurrentindex;
    notifyListeners();
  }

}