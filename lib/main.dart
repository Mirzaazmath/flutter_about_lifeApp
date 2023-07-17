import 'package:flutter/material.dart';
import 'package:flutter_about_life/screens/home_screen.dart';
import 'package:flutter_about_life/screens/navigatorscreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:const Color(0xff1c1c1c),
      ),
      home:  NavigatorScreen(),
    );
  }
}
