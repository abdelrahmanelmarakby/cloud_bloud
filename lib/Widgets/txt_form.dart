import 'package:cloud_bloud/login/LoginView.dart';
import 'package:flutter/material.dart';

class TxtForm extends StatelessWidget {
  final String title;
  final String hint;
  final Widget icon;
  /*final Function onSaved;
  final Function validator;
  */
  final bool obscure;
  const TxtForm({
    this.obscure = false,
    this.title = "add field name",
    this.hint = "add hint here",
    required this.icon,
    /* required this.onSaved,
    required this.validator,
  */
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Txt(
            title: title,
            color: Colors.grey.shade700,
            size: 14,
          ),
        ),
        TextFormField(
          obscureText: obscure,
          /* onSaved: onSaved,
          validator: validator,
          */
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey),
              suffixIcon: icon,
              fillColor: Color(0xff0c4271).withOpacity(.1),
              filled: true),
        )
      ],
    );
  }
}
