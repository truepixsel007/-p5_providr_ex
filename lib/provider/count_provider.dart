import 'package:flutter/cupertino.dart';

// ChangeNotifier is work as setstate
// global context hota hai
class CountProvider with ChangeNotifier{

   int _count = 0;
   // getter method create
   int get count => _count;

//    function make
   void setCount(){
      _count++;
      notifyListeners();
   }
}