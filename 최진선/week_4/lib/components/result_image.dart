import 'package:flutter/material.dart';

class ResultImage extends StatelessWidget {
  final String result;
  const ResultImage(this.result);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/$result.png",
          height: 170,
        ),
      ],
    );
  }
}