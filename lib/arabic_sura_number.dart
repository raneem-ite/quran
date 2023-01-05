import 'package:arabic_numbers/arabic_numbers.dart';
import "package:flutter/material.dart";

class ArabicSuraNumber extends StatelessWidget {
  final int i;
  ArabicSuraNumber({Key? key, required this.i}) : super(key: key);
  final ArabicNumbers arabicNumber = ArabicNumbers();

  @override
  Widget build(BuildContext context) {
    return Text(
      "\uFD3E" + arabicNumber.convert(i + 1) + "\uFD3F",
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontFamily: "me_quran",
          fontSize: 20,
          shadows: [
            Shadow(
                offset: Offset(.5, .5),
                blurRadius: 1.0,
                color: Colors.amberAccent)
          ]),
    );
  }
}
