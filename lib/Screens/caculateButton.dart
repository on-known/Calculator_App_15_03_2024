import 'package:flutter/material.dart';
import 'package:flutter_calculator_provider/Constant/color.dart';
import 'package:flutter_calculator_provider/provider/cal_provider.dart';
import 'package:provider/provider.dart';


class EqualButton extends StatelessWidget {
  const EqualButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<calculatorProvider>(context, listen: false).setvalue("=");
      },
      child: Container(
        height: 160,
        width: 70,
        decoration: const BoxDecoration(
          color: Appcolor.secondarycolor,
          borderRadius: BorderRadius.all(
            Radius.circular(
              30,
            ),
          ),
        ),
        child: const Center(
          child: Text(
            "=",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
