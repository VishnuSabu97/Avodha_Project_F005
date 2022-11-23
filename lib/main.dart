import 'package:flutter/material.dart';
import 'package:staggered_view/home.dart';
void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Staggered Grid View",
      home:Home(),
    );
  }
}
