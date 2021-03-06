import 'package:flutter/material.dart';
import 'package:tourist_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white.withOpacity(1)
      ),
      title: 'Hey',
      home: HomeScreen(),
    );
  }
}
