import 'package:flutter/material.dart';
import 'package:login_try/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: new LoginPage(),
    );
  }
  
}


