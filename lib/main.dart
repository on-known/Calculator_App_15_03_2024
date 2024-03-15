import 'package:flutter/material.dart';
import 'package:flutter_calculator_provider/Screens/home_screen.dart';
import 'package:flutter_calculator_provider/provider/cal_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => calculatorProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: const Home(),
      ),
    );
  }
}
