import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class calculatorProvider extends ChangeNotifier {
  final compcontroller = TextEditingController();

  setvalue(String value) {
    String str = compcontroller.text;

    switch (value) {
      case 'C':
        compcontroller.clear();
        break;
      case 'AC':
        compcontroller.text = str.substring(0, str.length - 1);
        break;
      case 'X':
        compcontroller.text += "*";
        break;
      case '=':
        compute();
        break;
      default:
        compcontroller.text += value;
    }
  }

  compute() {
    String text = compcontroller.text;
    compcontroller.text = text.interpret().toString();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    compcontroller.dispose();
    super.dispose();
  }
}
