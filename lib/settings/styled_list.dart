import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(
      this.text, {
        super.key,
        this.color = Colors.black,
        this.fontSize = 16,
        this.fontWeight = FontWeight.bold,
        this.textAlign = TextAlign.left,
      });

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: FontStyle.italic,
      ),
      textAlign: textAlign,
    );
  }
}