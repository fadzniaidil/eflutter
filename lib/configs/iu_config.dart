import 'package:flutter/material.dart';

hei(BuildContext context) => MediaQuery.of(context).size.height;
wid(BuildContext context) => MediaQuery.of(context).size.width;

ThemeData mythemeData = ThemeData(
  dialogBackgroundColor: Colors.black,
  colorScheme: const ColorScheme.light(
    primary: Colors.teal,
    onSurface: Colors.yellow,
    onPrimary: Colors.black,
  ),
);

Color primaryColor = Colors.teal;
Color secondaryColor = Colors.teal;
Color buttonColor = Colors.teal;

const String bg = 'assets/images/bg.jpg';
const String gf = 'assets/images/pingu-stare.gif';
const String icon = 'assets/images/icon.png';
