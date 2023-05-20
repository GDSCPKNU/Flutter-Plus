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
        appBar: AppBar(title: Row(
          children: [
            Container(child:
              Text(
                "채팅",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                ),
              )
            ),
            Container(child: Row(
              children: [
                Icon(Icons.search, color: Colors.black,),
                Icon(Icons.settings, color: Colors.black,),
                ],
              )
              ),
            ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/flutter.png"),
                    decoration: BoxDecoration(
                    ),
                  ),
                  Container(child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "Flutter study",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            Text(
                              "  7",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("다들 화이팅 입니당!",),
                      ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/gdsc.webp"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  Container(child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "GDSC PKNU 3기",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            Text(
                              "  66",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("모각코 하실분~~",),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 60,
            child: Row(
              children: [
                Icon(Icons.person_2_outlined, size: 33),
                Icon(Icons.chat_bubble, size: 33),
                Icon(Icons.view_agenda_outlined, size: 33),
                Icon(Icons.shopping_bag_outlined, size: 33),
                Icon(Icons.menu, size: 33),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
          ),
        ),
      ),
    );
  }
}
