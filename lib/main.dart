import 'package:fds/Screens/ServiceSelectionScreen.dart';
import 'package:fds/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        appBarTheme: const AppBarTheme(
            color: kWhite, actionsIconTheme: IconThemeData(color: kWhite)),
      ),
      home: const HomeScreen(),
      // home: Restaurants(),
      // home: Experimental(),
    );
  }
}
