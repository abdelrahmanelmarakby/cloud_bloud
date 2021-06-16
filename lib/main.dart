import 'package:cloud_bloud/core/Utils/Bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Modules/spalsh/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CLoud blood',
      theme: ThemeData(
          primaryColor: Color(0xffe40017),
          accentColor: Color(0xff0c4271),
          scaffoldBackgroundColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Color(0xffF4F4F4),
            border:
                UnderlineInputBorder(borderRadius: BorderRadius.circular(8)),
          )),
      defaultTransition: Transition.fade,
      initialBinding: Binding(),
      home: SplashPage(),
    );
  }
}
