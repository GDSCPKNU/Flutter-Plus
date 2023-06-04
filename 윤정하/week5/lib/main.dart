import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '스톱워치',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StopWatchPage(),
    );
  }
}

class StopWatchPage extends StatefulWidget {
  const StopWatchPage({super.key});

  @override
  _StopWatchPageState createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  /*
  필요한 변수
   */
  Timer? _timer;                //타이머
  var _time = 0;                //시간
  var _isStarted = false;       //시작했는지
  List<String> _lapTimes = [];  //랩타입 리스트


  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {

    var sec = '${_time ~/ 100}'.padLeft(2, '0');
    var hundredth = '${_time % 100}'.padLeft(2, '0');

    return Scaffold(
      appBar: AppBar(
        title: Text('StopWatch'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  child: Text(
                    '$sec',
                    style: TextStyle(fontSize: 50.0),
                  ),
                ),
                Container(
                  width: 80,
                  child: Text(
                    ' : ',
                    style: TextStyle(fontSize: 50.0),
                  ),
                ),
                Container(
                  width: 100,
                  child: Text(
                    '$hundredth',
                    style: TextStyle(fontSize: 50.0),
                  ),
                ),
              ],
            ),
            Container(
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 120),
              child: ListView(
                reverse: true,
                children: _lapTimes.map((time) => Text(time)).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                FloatingActionButton(
                  backgroundColor: Colors.deepOrange,
                  onPressed: _reset,
                  child: Icon(Icons.rotate_left),
                ),
                SizedBox(width: 30,),
                FloatingActionButton(
                  backgroundColor: Colors.grey,
                  onPressed: () {
                    setState(() {
                      _recordLapTime('$sec.$hundredth');
                    });
                  },
                  child: Icon(Icons.add_rounded),
                ),
                SizedBox(width: 30,),
                FloatingActionButton(
                  onPressed: () =>
                      setState(() {
                        _clickButton();
                      }),
                  child: _isStarted ? Icon(Icons.pause) : Icon(Icons.play_arrow),
                )

              ],
            ),

          ]

      ),
    );
  }


  // 시작 또는 멈춤 버튼 클릭
  void _clickButton() {
    _isStarted = !_isStarted;

    if (_isStarted) {
      _start();
    } else {
      _pause();
    }
  }

  // 백분의 1초에 한 번씩 time 변수를 1 증가
  void _start() {
    _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {
        _time++;
      });
    });
  }

  // 타이머 취소
  void _pause() {
    _timer?.cancel();
  }

  // 초기화
  void _reset() {
    setState(() {
      _isStarted = false;
      _timer?.cancel();
      _lapTimes.clear();
      _time = 0;
    });
  }

  // 랩타임 기록
  void _recordLapTime(String time) {
    _lapTimes.insert(0, '${_lapTimes.length + 1}등 $time');
  }

}