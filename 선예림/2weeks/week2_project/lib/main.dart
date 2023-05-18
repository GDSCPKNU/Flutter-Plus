import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Choonsik is so cute', style: TextStyle(fontSize: 30)),
        backgroundColor: Colors.orange,
        /* hihi*/
      ),
      body: Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hello! I am Choonsik',
                        style: TextStyle(fontSize: 30)),
                    SizedBox(height: 50.0),
                    Image.asset('choonsik.jpg', width: 250),
                  ],
                ),
              ),
              Text(
                '내가 제일 좋아하는 캐릭터 ~',
                style: TextStyle(
                    fontSize: 18, color: Colors.red, fontFamily: 'Verdana'),
              )
            ],
          ),
          //color: Colors.yellow,
          alignment: Alignment.center,
          //width: 200,
          height: 600,
          margin: EdgeInsets.all(25.0),
          padding: EdgeInsets.all(40.0)),
      bottomNavigationBar: BottomAppBar(child: Text('나는 예림')),
    ));
  }
}
