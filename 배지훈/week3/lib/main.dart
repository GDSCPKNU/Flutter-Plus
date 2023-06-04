import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "세계의 명화",
              style: TextStyle(fontSize: 25)
          ),
        ),
        drawer: Drawer(
          child: _drawer(),
        ),
        body:Center(
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              SizedBox(height: 20,),
              Container(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/monalisa.jpeg", width:150,fit: BoxFit.cover,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          child: Text(
                            "모나리자",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 20),
                          width: 200,
                          child: Text(
                            "레오나르도 다 빈치",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(onPressed: (){}, child: Text("more about"))
                      ],
                    )
                  ],
                ),
                height: 200,
              ),
              SizedBox(height: 10,),
              Container(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/sunflower.jpeg", width:150, fit:BoxFit.cover,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          child: Text(
                            "해바라기",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 20),
                          width: 200,
                          child: Text(
                            "빈센트 반 고흐",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(onPressed: (){}, child: Text("more about"))
                      ],
                    )
                  ],
                ),
                height: 200,
              ),
              SizedBox(height: 10,),
              Container(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/skrik.webp", width:150,fit: BoxFit.cover,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          child: Text(
                            "절규",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 20),
                          width: 200,
                          child: Text(
                            "에드바르트 뭉크",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(onPressed: (){}, child: Text("more about"))
                      ],
                    )
                  ],
                ),
                height: 200,
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      )
    );
  }
}

Drawer _drawer() => Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(child: Text("User", style: TextStyle(fontSize: 30),),
      decoration: BoxDecoration(color: Colors.amber),
      ),
      ListTile(
        leading: Icon(Icons.account_circle_rounded),
        title: Text("사용자"),
      ),
      ListTile(
        leading: Icon(Icons.star),
        title: Text("즐겨찾기"),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("설정"),
      ),
      ListTile(
        leading: Icon(Icons.close),
        title: Text("닫기"),
      ),
    ],
  ),
);
