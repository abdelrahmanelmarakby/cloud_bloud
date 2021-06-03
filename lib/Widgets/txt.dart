import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Txt extends StatelessWidget {
  const Txt({
    Key? key,
    required this.title,
    this.color = Colors.black,
    this.size = 18,
    this.isBold = false,
  }) : super(key: key);
  final String title;
  final Color color;
  final double size;
  final bool isBold;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.cairo(
            color: color,
            fontSize: size,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal));
  }
}
