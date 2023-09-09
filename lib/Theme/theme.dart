import 'package:flutter/material.dart';

MaterialColor materialWhite = MaterialColor(0xFFFFFFFF, {
  50: const Color(0xFFFFFFFF).withOpacity(0.1),
  100: const Color(0xFFFFFFFF).withOpacity(0.2),
  200: const Color(0xFFFFFFFF).withOpacity(0.3),
  300: const Color(0xFFFFFFFF).withOpacity(0.4),
  400: const Color(0xFFFFFFFF).withOpacity(0.5),
  500: const Color(0xFFFFFFFF).withOpacity(0.6),
  600: const Color(0xFFFFFFFF).withOpacity(0.7),
  700: const Color(0xFFFFFFFF).withOpacity(0.8),
  800: const Color(0xFFFFFFFF).withOpacity(0.9),
  900: const Color(0xFFFFFFFF).withOpacity(1.0),
});
const grayColor = Color(0xFF787878);
const blueColor = Color(0xFF2B66FF);
const redColor = Color.fromARGB(255, 247, 16, 0);

final shapeDecorationWhite = ShapeDecoration(
  color: Colors.white.withOpacity(0.4),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
);
final shapeDecorationBlack = ShapeDecoration(
  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
);

const textStyleBig = TextStyle(
  color: Color(0xFF323232),
  fontSize: 16,
  fontFamily: 'SF Pro',
  fontWeight: FontWeight.w600,
  letterSpacing: 0.06,
);
const textStyleSmall = TextStyle(
  color: Color(0xFF787878),
  fontSize: 12,
  fontFamily: 'SF Pro',
  fontWeight: FontWeight.w400,
  height: 1.30,
  letterSpacing: 0.02,
);
