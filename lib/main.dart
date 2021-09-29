import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainnig_app_2021/HomePage.dart';
import 'package:trainnig_app_2021/vedio_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Trainning App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

