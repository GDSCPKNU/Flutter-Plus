import 'package:flutter/material.dart';
import 'package:week_4/pages/start_page.dart';
import 'package:week_4/pages/result_page.dart';

void main() {
  runApp(BMIcarculator());
}

class BMIcarculator extends StatelessWidget {
  const BMIcarculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          minimumSize: Size(400, 60),
          ),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => StartPage(),
        "/result" : (context) => ResultPage()
      },
    );
  }
}