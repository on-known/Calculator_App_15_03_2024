import 'package:flutter/material.dart';
import 'package:flutter_calculator_provider/Constant/color.dart';
import 'package:flutter_calculator_provider/provider/cal_provider.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget {
  const Button1(
      {super.key, required this.label, this.buttonTextcolor = Colors.white});
  final String label;
  final Color buttonTextcolor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<calculatorProvider>(context, listen: false).setvalue(label);
      },
      child: Material(
        color: Appcolor.secondary2color,
        elevation: 3,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        child: CircleAvatar(
          backgroundColor: Appcolor.secondary2color,
          radius: 36,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: buttonTextcolor,
            ),
          ),
        ),
      ),
    );
  }
}
