import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
    );
  }
}
