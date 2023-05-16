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
          title: Text('짱구야 놀자', style: TextStyle(fontSize: 26)),
          backgroundColor: Colors.red,
        ),
        body: Container(
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(30),
            ),
          height: 450,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(13),
          child: Column(
            children: [
              Image.asset('assets/신짱구.png', width: 180),
              Expanded(
                child:
                Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('신짱구', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.grey[800])),
                          Text('野原 しんのすけ', style: TextStyle(fontSize: 25, color: Colors.grey[800])),
                          Wrap(
                              spacing: 12,
                              children: [
                                Text('나이: 5살', style: TextStyle(fontSize: 21, color: Colors.grey[800])),
                                Text('생일: 5월 5일', style: TextStyle(fontSize: 21, color: Colors.grey[800])),
                                Text('혈액형: B형', style: TextStyle(fontSize: 21, color: Colors.grey[800])),
                              ]
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Icon(Icons.favorite, color: Colors.red, size: 37),
                                Icon(Icons.favorite, color: Colors.red, size: 37),
                                Icon(Icons.favorite, color: Colors.red, size: 37),
                              ]
                          )
                        ]
                    )
                )
              )
            ]
          )
        )
      )
    );
  }
}
