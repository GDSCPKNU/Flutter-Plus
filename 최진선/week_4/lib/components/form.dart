import 'package:flutter/material.dart';
import 'package:week_4/components/form_field.dart';

class FormInput extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  final _inputValue = <double>[0,0];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          FormInputField(
            text: "키",
            onChanged: (value) {
              _inputValue[0] = double.parse(value);
            },
          ),
          const SizedBox(height: 30,),
          FormInputField(
            text: "몸무게",
            onChanged: (value) {
              _inputValue[1] = double.parse(value);
            },
          ),
          const SizedBox(height: 30,),
          TextButton(
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                Navigator.pushNamed(
                  context, 
                  "/result",
                  arguments: _inputValue
                );
              }
            },
            child: Text(
              "결과 보기",
              style: TextStyle(fontSize: 20),
            )
          )
        ]
      ),
    );
  }
}