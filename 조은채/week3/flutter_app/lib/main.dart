import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp()); //앱 시작해주세요 앱 메인페이지 입력
}

class MyApp extends StatelessWidget { //앱 메인페이지 만듦 의미는 없음
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(// 이 위치에 코딩
        title: "Flutter Demo",
        theme:  ThemeData(
          primarySwatch: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("산리오"),
        ),
        drawer: Drawer(
          child: _drawer(),
        ),
        body: Center(
          child: _buildList(),
        ),
      )
    );
  }
}

Drawer _drawer() => Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(child: Text("dparks62"),
      decoration: BoxDecoration(
        color: Colors.lightBlue
        ),
      ),
      ListTile(
        title: Text("프로필"),
      ),
      ListTile(
        title: Text("설정"),
      ),
      ListTile(
        title: Text("로그아웃"),
      ),
    ],
  ),
);

Widget _buildList() => ListView(
  children: [
    _tile("반", "안녕하세요"),
    _tile("가", "Ni Hau"),
    _tile("워", "Hello"),
    _tile("요", "Konnichiwa")
  ],
);

ListTile _tile(String title, String subtitle) => ListTile(
  title: Text(title),
  subtitle: Text(subtitle),
  leading: _userImage(images[Random().nextInt(images.length)]) // 이미지를 넣음(주소 넣기)

);

ClipRRect _userImage(String url) => ClipRRect(
  borderRadius: BorderRadius.circular(100),
  child: Image.network(url),
);

final images = [
  "https://lh3.googleusercontent.com/Ly4nvLfLG2aTSoK9WTANgZzD6n7PTKIgsHDr6WtQErxklEtqnmHxOxZy7LRBo9E-d8Bg4dCFwOgcbexWysNZjjme1YJudtDlsfiDVdw",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA8wpN-L5GlZxT47Gly7vRQf7tMCV2CYB0qA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm_GUP5XhRJf6u_D4JPFXUJGe9wZ4zdhCgjQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk8QOF3XVQhiz_zruTBCA5d7_-aTQXerOw3w&usqp=CAU",
];