import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Modules/spalsh/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CLoud blood',
      theme: ThemeData(
          primaryColor: Color(0xffe40017),
          accentColor: Color(0xff0c4271),
          scaffoldBackgroundColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Color(0xffE8EDEA),
            border:
                UnderlineInputBorder(borderRadius: BorderRadius.circular(8)),
          )),
      defaultTransition: Transition.fade,
      home: spalshPage(),
    );
  }
}
