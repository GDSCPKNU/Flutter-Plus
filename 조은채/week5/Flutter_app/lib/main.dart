import 'dart:async';
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

class Home extends StatefulWidget { // 모양이 변하는 경우가 하나라도 있는 경우
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Timer? _timer; // 타이머
  var _time = 0; // 시간
  var _isRunning = false; // 시작 여부

  List<String> _lapTimes = []; // 랩타임에 표시할 시간을 저장하기 위함

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StopWatch"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: _buildBody(),
      bottomNavigationBar: Container(
        height: 60,
        child: BottomAppBar(),
      ),
      floatingActionButton: FloatingActionButton( // action button
        onPressed: () => setState(() {
          _clickButton();
        }),
        child: _isRunning ? Icon(Icons.pause) : Icon(Icons.play_arrow), // _isRunning이 True면 icon이 pause, false면 play_arrow
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildBody() {
    var sec = _time ~/ 100;
    var hundredth = '${_time % 100}'.padLeft(2, '0');

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Stack( // Stack은 단지 정해진 위치나 규칙 없이 위젯들을 배치만 하므로 Container들이 겹치는 것
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      '$sec',
                      style: TextStyle(fontSize: 50.0),
                    ),
                    Text('$hundredth'),
                  ],
                ),
                Container(
                  width: 100,
                  height: 200,
                  child: ListView(
                    children: _lapTimes.map((time) => Text(time)).toList(),
                  ),
                )
              ],
            ),
            Positioned( // Stack에선 위젯들의 위치를 사용자가 직접 정해줘야하는데, 이때 위치를 특정하기 위해 사용하는 위젯이 Positioned Class
              left: 10,
              bottom: 10,
              child: FloatingActionButton(
                backgroundColor: Colors.deepOrange,
                onPressed: _reset,
                child: Icon(Icons.rotate_left),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _recordLapTime('$sec.$hundredth');
                  });
                },
                child: Text('랩타임'),
              ),
            )
          ],
        ),
      ),
    );
  }

  // 시작 또는 멈춤 버튼 클릭
  void _clickButton() {
    _isRunning = !_isRunning;

    if (_isRunning) {
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
      _isRunning = false;
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