import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CalculatorProvider with ChangeNotifier {
  String input = '';
  String output = '';
  String operator = '';
  double o1 = 0, o2 = 0, result = 0;

  CalculatorProvider() {
    String input = '';
    String output = '';
    String operator = '';
    double o1 = 0, o2 = 0, result = 0;
  }

  void inputNumber(String number) {
    output += number;
    input += number;
    notifyListeners();
  }

  void operatorTap(String ope) {
    o1 = double.parse(input);
    input = '';

    output += ope;
    operator = ope;
    notifyListeners();
  }

  void calculatorResult() {
    o2 = double.parse(input);
    if (operator == '+') {
      result = o1 + o2;
    }
    if (operator == '-') {
      result = o1 - o2;
    }
    if (operator == '*') {
      result = o1 * o2;
    }
    if (operator == '/') {
      result = o1 / o2;
    }
    print('$o1 $operator $o2 = $result');
    output = result.toString();
    notifyListeners();
  }

  void cancelTap() {
    input = '';
    output = '';
    operator = '';
    o1 = 0;
    o2 = 0;
    result = 0;
    notifyListeners();
  }
}
