import 'package:flutter/material.dart';
import 'package:week_4/components/result_image.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List data = ModalRoute.of(context)!.settings.arguments as List;
    final double bmi = carculateBMI(data[0], data[1]);
    final List result = returnState(bmi);

    return Scaffold(
      appBar: AppBar(
        title: Text(
            "분석 결과",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
          ),
        backgroundColor: Colors.orange,
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            SizedBox(height: 225,),
            ResultImage(result[0]),
            SizedBox(height: 20,),
            Text(
              result[1],
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "( BMI : " + bmi.toStringAsFixed(3).toString() + " )",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      )
    );
  }
}

double carculateBMI(double height, double weight) {
  return weight/((0.01*height)*(0.01*height));
}

List returnState(double BMI) {
  if (BMI <= 18.5) {
    return ["lowweight", "저체중"];
  } else if (BMI <= 23) {
    return ["normality", "정상체중"];
  } else if (BMI <= 25) {
    return ["overweight", "과체중"];
  } else if (BMI <= 30) {
    return ["obesity", "비만"];
  } else {
    return ["severeobesity", "고도비만"];
  }
}