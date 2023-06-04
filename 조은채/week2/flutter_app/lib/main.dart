import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //앱 시작해주세요 앱 메인페이지 입력
}

class MyApp extends StatelessWidget { //앱 메인페이지 만듦 의미는 없음
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(// 이 위치에 코딩
        home: Scaffold(
          appBar: AppBar(title: Text("Insta_SonMinSu"),backgroundColor: Colors.black,
            centerTitle: true,leading: IconButton(icon: Icon(Icons.menu, color: Colors.white), onPressed: null),
            actions: [
              IconButton(icon: Icon(Icons.settings, color: Colors.white), onPressed: null),
            ],),
          body: Container(
            height: 1000,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('images.jpg', width:150,),
                      Text("         "), Text("게시물: 14",style: TextStyle(fontSize: 15)), Text("         "), Text("팔로워: 549",style: TextStyle(fontSize: 15)),
                      Text("         "), Text("팔로잉: 293",style: TextStyle(fontSize: 15)), Text("         "),
                    ],
                  ),
                ),
                Text(" "),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("석매튜",style: TextStyle(fontSize: 20))
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("         "),ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                        primary: Colors.black, // Background color
                      ),
                        child: Text("프로필 편집"), ), Text("         "), ElevatedButton(onPressed: () {  },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // Background color
                        ),
                        child: Text("프로필 공유"), )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}