import 'dart:async';
import 'package:flutter/material.dart';

class StopWatchPage extends StatefulWidget {
  const StopWatchPage({super.key});

  @override
  State<StopWatchPage> createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  var _time = 0; // 0.01초 마다 1씩 증가시킬 변수
  var _isRunning = false; // 현재 시작
  late Timer _timer; // 타이머

  List<String> _lapTimes = []; // 랩타임에 표시할 시간을 저장할 리스트

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          _timerBody(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(height: 130,),  // 필수 필드
                fit:  FlexFit.tight,  // 기본값, 옵션 필드
                flex: 1,),
              Container(
                height: 130,
                width: 130,
                padding: EdgeInsets.all(15),
                child: _lapTimeButton(),
              ),
              Flexible(
                child: Container(height: 130,),  // 필수 필드
                fit:  FlexFit.tight,  // 기본값, 옵션 필드
                flex: 1,),
              Container(
                height: 130,
                width: 130,
                padding: EdgeInsets.all(15),
                child: _controlButton(),
              ),
              Flexible(
                child: Container(height: 130,),  // 필수 필드
                fit:  FlexFit.tight,  // 기본값, 옵션 필드
                flex: 1,),
            ],
          ),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.only(left: 80),
            width: 100,
            height: 250,
            child: ListView(
              children: _lapTimes.map((time) => Row(
                children: [
                  Text(
                    "랩" + _lapTimes.indexOf(time).toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700
                      ),
                  ),
                  SizedBox(width: 200),
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700
                      ),
                  )
                ]
              )).toList(),
            ),
          )
        ],
      ) 
    );
  }

  Widget _timerBody() {
    var sec = _time ~/ 100;
    var hundredth = '${_time % 100}'.padLeft(2, '0');

    return Container(
      width: double.infinity,
      height: 300,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '$sec',
            style: TextStyle(
              color: Colors.white,
              fontSize: 80,
              fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(width: 5),
          Text(
            '.$hundredth',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500
            ),
          ),
        ]
      )
    );
  }

  Widget _lapTimeButton() {
    var sec = _time ~/ 100;
    var hundredth = '${_time % 100}'.padLeft(2, '0');

    return ElevatedButton(
      onPressed: () {
        setState(() {
          _isRunning ? _recordLapTime('$sec.$hundredth') : _reset();
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black54,
        side: BorderSide(color: Colors.grey, width: 3.5),
        shape: CircleBorder(),
      ),
      child: Text(
        _isRunning ? "랩" : "재시작",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600
        ),
      )
    );
  }

    Widget _controlButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _clickButton();
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black54,
        side: BorderSide(color: _isRunning ? Colors.red : Colors.green, width: 3.5),
        shape: CircleBorder(),
      ),
      child: Text(
        _isRunning ? "중단" : "시작",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600
        ),
      )
    );
  }

  void _clickButton() {
    _isRunning = !_isRunning;

    if (_isRunning) {
      _start();
    } else {
      _pause();
    }
  }

  void _start() {
    _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {
        _time++;
      });
    });
  }

  void _pause() {
    _timer?.cancel();
  }

  void _reset() {
    setState(() {
      _isRunning = false;
      _timer?.cancel();
      _lapTimes.clear();
      _time = 0;
    });
  }

  void _recordLapTime(String time) {
    _lapTimes.insert(0, '$time');
  }
}