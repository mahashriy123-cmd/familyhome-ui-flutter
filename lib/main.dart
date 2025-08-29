import 'package:familyhome/constants.dart';
import 'package:familyhome/screens/Hom_Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "familyHome",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: KBackgroundColor),
        scaffoldBackgroundColor: KBackgroundColor,

        colorScheme: ColorScheme.light(
          primary: Colors.white,
          secondary: KSecondColor, // اللون الثانوي
        ),

        iconTheme: IconThemeData(color: Colors.black),
        fontFamily: GoogleFonts.montserrat().fontFamily ,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: HomeScreen(),
    );
  }
}
