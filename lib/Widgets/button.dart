import 'package:cloud_bloud/Widgets/txt.dart';
import 'package:flutter/material.dart';

import '../consts.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.onPressed,
    this.title = "add text",
  }) : super(key: key);
  final Function onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: accentColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              minimumSize: Size.infinite),
          onPressed: () => onPressed,
          child: Txt(
            color: Colors.white,
            title: title,
            isBold: true,
          )),
    );
  }
}
