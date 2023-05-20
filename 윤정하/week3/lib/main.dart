import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
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
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          '부경대학교',
          style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.indigo),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xff4D545E),
        child: ListView(
          children: [
            Container(
              color: Color(0xff2D343E),
              width: double.infinity,
              height: 50,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '윤정하',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xff3B434D),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          (Icons.home),
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'HOME',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Color(0xff3B434D),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            (Icons.mail),
                            color: Colors.white,
                          )),
                      Text(
                        '메세지',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xff3B434D),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          (Icons.photo_album),
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '마이페이지',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('교육현황'),
              tileColor: Color(0xff3B434D),
              textColor: Colors.white,
            ),
            ListTile(
              title: Text('- 과목검색'),
              textColor: Colors.white,
            ),
            ListTile(
              title: Text('- OCW'),
              textColor: Colors.white,
            ),
            ListTile(
              title: Text('- 학사일정'),
              textColor: Colors.white,
            ),
            ListTile(
              title: Text('- 강의계획서조회'),
              textColor: Colors.white,
            ),
            ListTile(
              title: Text('커뮤니티'),
              tileColor: Color(0xff3B434D),
              textColor: Colors.white,
            ),
            ListTile(
              title: Text('- 공지사항'),
              textColor: Colors.white,
            ),
            ListTile(
              title: Text('- 질의응답'),
              textColor: Colors.white,
            ),
            ListTile(
              title: Text('- 자료실'),
              textColor: Colors.white,
            ),
            ListTile(
              title: Text('- 소모임'),
              textColor: Colors.white,
            ),
            ListTile(
              title: Text('- 설문'),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black26
                  )
              ),
              height: 300,
              alignment: Alignment.topCenter,
            ),
            SizedBox(height: 30,),
            Text('수강과목', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
            SizedBox(height: 30,),
            Text('오늘시간표', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 30,),
            Text('공지사항', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
