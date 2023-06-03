import 'package:flutter/material.dart';
import 'package:week_4/components/logo.dart';
import 'package:week_4/components/form.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            SizedBox(height: 100,),
            Logo("BMI 계산기"),
            SizedBox(height: 30,),
            FormInput(),
          ],
        ),)
    );
  }
}