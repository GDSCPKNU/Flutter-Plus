import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String title;
  
  const Logo(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/bmi.png",
          height: 150,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}