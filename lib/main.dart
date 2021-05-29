import 'package:cloud_bloud/spalsh/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xffe40017),
        accentColor: Color(0xff0c4271),
        scaffoldBackgroundColor: Color(0xfffffbdf),
        primarySwatch: Colors.red,
      ),
      defaultTransition: Transition.fade,
      home: spalshPage(),
    );
  }
}
