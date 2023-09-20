import 'package:flutter/foundation.dart';

class ExampleOneProvider with ChangeNotifier {
   double _value = 1.0;
   double get value => _value;

   void setValue(double value1){
      _value = value1;
      notifyListeners();
   }

}