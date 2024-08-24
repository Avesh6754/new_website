import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliowebsite/constant.dart';
import 'package:portfoliowebsite/screens/home/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo Project',
        theme: ThemeData.dark().copyWith(
            primaryColor: primarycolor,
            scaffoldBackgroundColor: bgcolor,
            canvasColor: bgcolor,
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.white)
                .copyWith(
              bodyLarge: TextStyle(color: bodyTextColor),
              bodyMedium: TextStyle(color: bodyTextColor),
            )),
        home: HomeScreen());
  }
}