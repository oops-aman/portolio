import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double textsize;
  final Color color;
  final double letterSpacing;
  final FontWeight fontWeight;
  const CustomText(
      {super.key,
      required this.text,
      required this.textsize,
      required this.color,
      required this.letterSpacing,
      required this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // textAlign: TextAlign.center,
      style: GoogleFonts.workSans(
        color: color,
        fontSize: textsize,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight,
      ),
    );
  }
}
