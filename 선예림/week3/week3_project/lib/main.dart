import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo-list',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightGreen, title: Text("코로나 격리 한줄 일기")),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("오늘은 5월 20일 격리 6일차.."),
            Spacer(),
            Text('1. 오늘은 잠을 제대로 못잤다.'),
            Spacer(flex: 1),
            Text('2. 증상은 많이 괜찮아졌으나 머리가 너무 아프다!'),
            Spacer(flex: 1),
            Text('3. happy color 너무 재미있다! 근데 하나 색칠하니까 또 두통이..'),
            Spacer(flex: 1),
            Text('4. 집 가면 먹고싶은 것이 너무 많다.. 일단 떡볶이'),
            Image.asset('ddeokbokgi.jpeg'),
            Text("본인 떡볶이에 환장하는 사람")
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('choonsik.jpg'),
              ),
              accountEmail: Text('yerim123456789@gmail.com'),
              accountName: Text('Sun Yerim'),
              onDetailsPressed: () {
                print('press details');
              },
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
            ),
            ListTile(
              title: Text("05월 15일 기록"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("05월 16일 기록"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("05월 17일 기록"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("05월 18일 기록"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('05월 19일 기록'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("05월 20일 기록"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
