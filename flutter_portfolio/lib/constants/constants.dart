import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kGrey = const Color.fromARGB(255, 211, 216, 224);
Color kPrimaryColor = const Color.fromARGB(255, 211, 216, 224);
Color kWhite = Colors.white;
Color kBlack = Colors.black;

TextStyle kTitleText = GoogleFonts.poppins(
  color: Colors.white,
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
);

TextStyle kSubTitleText = GoogleFonts.montserrat(
  color: Colors.white
  ,
  fontWeight: FontWeight.bold,
  fontSize: 12.0,
);

TextStyle kSectionTitleText = GoogleFonts.montserrat(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  
  style: ButtonStyle(
    side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(
              color: Colors.white
            ),
    ),
   
    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.black),
    foregroundColor: MaterialStateColor.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) return Colors.black;
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed)) return Colors.white;
        return kGrey; // Defer to the widget's default.
      },
    ),
  ),
);
