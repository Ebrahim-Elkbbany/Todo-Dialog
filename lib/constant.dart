import 'dart:ui';
import 'package:flutter/material.dart';

const primaryColor=Color(0xff4368FF);

abstract class Styles {
  static const textStyle25 =
  TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 25
  );
  static const textStyle22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.white
  );
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
      color: Colors.white
  );
}