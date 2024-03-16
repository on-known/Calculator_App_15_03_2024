import 'package:flutter/material.dart';
import 'package:flutter_calculator_provider/Constant/color.dart';
import 'package:flutter_calculator_provider/Constant/widget_data.dart';
import 'package:flutter_calculator_provider/Screens/caculateButton.dart';
import 'package:flutter_calculator_provider/Widgets/formfieldtext.dart';
import 'package:flutter_calculator_provider/provider/cal_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    const Padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);

    return Consumer<calculatorProvider>(
        builder: (BuildContext context, providerValue, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Calculator App",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            CustomFormField(
              controller: providerValue.compcontroller,
            ),
            const Spacer(),
            Container(
              height: screenheight * .6,
              width: double.infinity,
              padding: Padding,
              decoration: const BoxDecoration(
                color: Appcolor.primarycolor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(
                    30,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonlist[index]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        List.generate(4, (index) => buttonlist[index + 4]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        List.generate(4, (index) => buttonlist[index + 8]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  3, (index) => buttonlist[index + 12]),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                3,
                                (index) => buttonlist[index + 15],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const EqualButton()
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
