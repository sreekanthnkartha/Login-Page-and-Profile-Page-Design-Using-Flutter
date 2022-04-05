import 'package:flutter/material.dart';
import 'package:task1/Login.dart';
import 'package:task1/Page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  
  Widget build(BuildContext context) {
    
    // return LoginPage();
    return HomePage();
  }
}
