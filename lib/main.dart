import 'package:flutter/material.dart';
import 'package:handmadee/LoginScreen/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          splashColor: Colors.transparent,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: LoginScreen(),
    );
  }
}
