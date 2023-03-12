import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_desktob/view/Widgets/mainsection/HomeBanner.dart';
import 'package:web_desktob/view/Widgets/mainsection/Projects.dart';
import 'package:web_desktob/view/Widgets/mainsection/Recommendation.dart';

import 'constant.dart';
import 'view/Screen/HomeScreen.dart';
import 'view/Widgets/sidemenu/Goals.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Website',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: primarycolor,
          scaffoldBackgroundColor: black,
          canvasColor: black,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
            bodyText1: TextStyle(
              color: greyTextColor,
            ),
            bodyText2: TextStyle(
              color: black,
            ),
            headline1: TextStyle(
              color: black,
            ),
          )),
      home: Goals(),
    );
  }
}