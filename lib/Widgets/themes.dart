import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: CreamColor,
      buttonTheme: ButtonThemeData(
        buttonColor: Color(0xff403b58),
      ),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: DarkBluishColor),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      textTheme: Theme.of(context).textTheme);
  static ThemeData DarkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      //brightness: Brightness.dark,
      cardColor: Colors.black,
      canvasColor: DarkCreamColor,
      buttonTheme: ButtonThemeData(
        buttonColor: Vx.indigo500,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: CreamColor),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      textTheme: Theme.of(context).textTheme);

  static Color CreamColor = Color(0xfff5f5f5);
  static Color DarkCreamColor = Vx.gray900;
  static Color DarkBluishColor = Color(0xff403b58);
  static Color LightBluishColor = Vx.indigo500;
  static Color BlackColor = Color(0x000000);
}
