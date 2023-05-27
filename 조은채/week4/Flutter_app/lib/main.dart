import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp()); //앱 시작해주세요 앱 메인페이지 입력
}

class MyApp extends StatelessWidget { //앱 메인페이지 만듦 의미는 없음
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(// 이 위치에 코딩
      title: "Flutter Demo",
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget { // 블로그 참고
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<Home> {
  final _formKey = GlobalKey<FormState>(); // form 상태를 얻기 위한 키
  final _height = TextEditingController(); // 컨트롤러 생성
  final _weight = TextEditingController();

  @override
  void dispose() { // 화면이 종료될 때 컨트롤러도 종료시켜줘야함
    _height.dispose();
    _weight.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold( // 어떠한 위젯도 화면에 배치할 수 없다 (빈 도화지)
      appBar: AppBar(
        title: Text("비만도 계산기"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child:Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "키"
                  ),
                  keyboardType: TextInputType.number,
                  controller: _height,
                  validator: (value) {
                    if(value!.trim().isEmpty) {
                      return "키를 입력해주세요";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "몸무게"
                  ),
                  keyboardType: TextInputType.number,
                  controller: _weight,
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return "몸무게를 입력해주세요";
                    }
                    return null;
                  },
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    child: Text("결과"),
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        Navigator.push(context,MaterialPageRoute(
                            builder:(context)=> secondPage(
                                double.parse(_height.text.trim()),
                                double.parse(_weight.text.trim())
                            )
                        )); // 1page를 제거하고 2를 불러오는게 아닌
                        // 1page 위에 쌓는다 (push)
                        // Navigator.push(context.route) 여기서 route는 우리가 이동할 페이지
                      }
                    },
                  ),
                )
              ],
            ),
          ),
          padding: EdgeInsets.all(10.0),
        ),
      ),
    );
  }
}
class secondPage extends StatelessWidget {
  final double height;
  final double weight;
  secondPage(this.height, this.weight);

  @override
  Widget build(BuildContext context) {
    final bmi = weight / ((height / 100) * (height / 100));

    return Scaffold(
      appBar: AppBar(
        title: Text("결과"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                _calculate(bmi)
            ),
            _sketchIcon(bmi)
          ],
        ),
      ),
    );
  }
}
String _calculate(bmi){
  var result = "";
  if(bmi>=23){
    result = "과체중";
  }
  else if(bmi>=18.5){
    result = "정상";
  }
  else{
    result = "저체중";
  }
  return result;
}
Widget _sketchIcon(bmi){
  if(bmi>=23){
    return Icon(Icons.sentiment_dissatisfied,
      color: Colors.red[200],
      size: 100,
    );
  }
  else if(bmi>=18.5){
    return Icon(Icons.sentiment_very_satisfied,
      color: Colors.green[200],
      size: 100,
    );
  }
  else {
    return Icon(Icons.sentiment_very_dissatisfied,
      color: Colors.orange[200],
      size: 100,
    );
  }

}