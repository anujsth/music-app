import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class themeData {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      backgroundColor: Colors.indigo[900],
      highlightColor: Color(hexColor('#0ff1ce')),
      fontFamily: GoogleFonts.poppins().fontFamily,
      buttonColor: Colors.blue[50],
      primaryColor: Colors.blue[50],
      // focusColor: Color(hexColor('#008080')));
      focusColor: Color(hexColor('#0ff1ce')));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      backgroundColor: Colors.grey[900],
      primaryColor: Color(hexColor('#99eeff')),
      buttonColor: Colors.lightBlue,
      highlightColor: Colors.white,
      focusColor: Color(hexColor('#393e3f')));
}

hexColor(String colorpassed) {
  String newColor = '0xff' + colorpassed;
  newColor = newColor.replaceAll('#', '');
  int newColor2 = int.parse(newColor);
  return newColor2;
}
