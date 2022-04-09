import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class FbColorText extends StatelessWidget {
  FbColorText(
    this.text,
    this.textsize,
    this.textWeight,
  );
  final String text;
  final FontWeight textWeight;

  final double textsize;
  @override
  Widget build(BuildContext context) {
    return GradientText(
      text,
      style: TextStyle(fontSize: textsize, fontWeight: textWeight),
      colors: [Color(0xff384CFF), Color(0xff00A3FF)],
    );
  }
}
