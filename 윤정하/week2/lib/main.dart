import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'user information',
      home: const MyHomePage(),
      //디버그 띠 없애기
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //앱바 색 변경
        backgroundColor: Colors.black12,
      ),
      body: Center(
        child: Container(
          //높이
          height: 400,
          //너비
          width: 300,
          //Container를 꾸미는 property
          decoration: BoxDecoration(
            //색
              color: Colors.black12,
              //테두리 둥글게
              borderRadius: BorderRadius.circular(30)),
          //내부
          padding: EdgeInsets.all(30),
          //자식 위젯으로 Column
          child: Column(
            children: [
              //텍스트와 아이콘을 담기 위한 Row
              Row(
                //자식 위젯들이 중심에 오도록
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //텍스트
                  Text('USER INFORMATION ',
                    //글자 꾸미기
                    style: TextStyle(
                      //사이즈
                        fontSize: 20,
                        //색
                        color: Colors.black38
                    ),),
                  //아이콘
                  Icon(Icons.account_circle,
                      //색
                      color: Colors.black38),
                ],
              ),
              //나머지 공간을 채우도록 Expanded
              Expanded(child: SizedBox()),
              //이미지 에셋
              Image.asset(
                'assets/spongebob.jpeg',
                width: 130,
                height: 130,
              ),
              //텍스트 위젯
              Text(
                'Yoon Jeongha',
                //글자 꾸미기
                style: TextStyle(
                  //색
                    color: Colors.white,
                    //크기
                    fontSize: 25,
                    //굵기
                    fontWeight: FontWeight.bold,
                    //그림자
                    shadows: [
                      Shadow(
                        blurRadius: 10,
                      )
                    ]),
              ),
              Text(
                'Computer Engineering',
                //글자 꾸미기
                style: TextStyle(
                  //색
                  color: Colors.grey,
                  //크기
                  fontSize: 15,
                  //굵기
                  fontWeight: FontWeight.bold,
                ),
              ),
              //나머지 공간을 채우도록 Expanded
              Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
