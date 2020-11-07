import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Home.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Binary to Decimal",
      home: Home(),
      theme: ThemeData(
        textTheme: GoogleFonts.righteousTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
