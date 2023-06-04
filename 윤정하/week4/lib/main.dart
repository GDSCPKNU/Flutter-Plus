import 'package:flutter/material.dart';
import './ResultPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BmiMain(),
    );
  }
}

class BmiMain extends StatefulWidget {
  @override
  _BmiMainState createState() => _BmiMainState();
}

class _BmiMainState extends State<BmiMain> {
  final _formKey = GlobalKey<FormState>();

  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  @override
  void dispose() {
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('비만도 계산기'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      hintText: '키',
                    ),
                    controller: _heightController,
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return '키를 입력해 주세요';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      hintText: '몸무게',
                    ),
                    controller: _weightController,
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return '몸무게를 입력해 주세요';
                      }
                      return null;
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.white,
                          shape:  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(color: Colors.grey)
                          )
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultPage(
                                  double.parse(_heightController.text),
                                    double.parse(_weightController.text))),
                          );
                        }
                      },
                      child: Text('결과',style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

