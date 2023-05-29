import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double height;
  final double weight;

  ResultPage(this.height, this.weight);

  @override
  Widget build(BuildContext context) {
    final bmi = weight / ((height / 100) * (height / 100));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('비만도 계산기')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _calculateBmi(bmi),
              style: TextStyle(fontSize: 36),
            ),
          ],
        ),
      ),
    );
  }

  String _calculateBmi(double bmi) {
    var result = '저체중';
    if (bmi >= 30) {
      result = '고도 비만';
    } else if (bmi >= 25) {
      result = '비만';
    } else if (bmi >= 23) {
      result = '과체중';
    } else if (bmi >= 18.5) {
      result = '정상';
    }
    return result;
  }

}