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
      home: Scaffold(
        appBar: AppBar(
          title: Text("aespa", style: TextStyle(fontSize: 27, color: Colors.black87)),
          backgroundColor: Colors.purple[100],
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )
          ]
        ),
        drawer: Drawer(
          child: MyDrawer(),
        ),
        body: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 125,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/next level.jpg', fit: BoxFit.cover),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text("Next Level", style: TextStyle(fontSize: 27)),
                        Expanded(
                            child:
                            Container(
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton.icon(
                                          onPressed: (){},
                                          icon: Icon(Icons.favorite, size: 24, color: Colors.red),
                                          label: Text("좋아요", style: TextStyle(fontSize: 18, color: Colors.grey[800])),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10)
                                              )
                                          )
                                      ),
                                      SizedBox(width: 10),
                                      ElevatedButton.icon(
                                          onPressed: (){},
                                          icon: Icon(Icons.download, size: 24, color: Colors.black),
                                          label: Text("담기", style: TextStyle(fontSize: 18, color: Colors.grey[800])),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10)
                                              )
                                          )
                                      ),
                                    ]
                                )
                            )
                          )
                        ]
                    )
                  ]
                )
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 125,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/girls.jpg', fit: BoxFit.cover),
                      ),
                      SizedBox(width: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text("Girls", style: TextStyle(fontSize: 27)),
                            Expanded(
                                child:
                                Container(
                                    child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          ElevatedButton.icon(
                                              onPressed: (){},
                                              icon: Icon(Icons.favorite, size: 24, color: Colors.red),
                                              label: Text("좋아요", style: TextStyle(fontSize: 18, color: Colors.grey[800])),
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10)
                                                  )
                                              )
                                          ),
                                          SizedBox(width: 10),
                                          ElevatedButton.icon(
                                              onPressed: (){},
                                              icon: Icon(Icons.download, size: 24, color: Colors.black),
                                              label: Text("담기", style: TextStyle(fontSize: 18, color: Colors.grey[800])),
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10)
                                                  )
                                              )
                                          ),
                                        ]
                                    )
                                )
                            )
                          ]
                      )
                    ]
                )
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 125,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/spicy.jpg', fit: BoxFit.cover),
                      ),
                      SizedBox(width: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text("Spicy", style: TextStyle(fontSize: 27)),
                            Expanded(
                                child:
                                Container(
                                    child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          ElevatedButton.icon(
                                              onPressed: (){},
                                              icon: Icon(Icons.favorite, size: 24, color: Colors.red),
                                              label: Text("좋아요", style: TextStyle(fontSize: 18, color: Colors.grey[800])),
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10)
                                                  )
                                              )
                                          ),
                                          SizedBox(width: 10),
                                          ElevatedButton.icon(
                                              onPressed: (){},
                                              icon: Icon(Icons.download, size: 24, color: Colors.black),
                                              label: Text("담기", style: TextStyle(fontSize: 18, color: Colors.grey[800])),
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10)
                                                  )
                                              )
                                          ),
                                        ]
                                    )
                                )
                            )
                          ]
                      )
                    ]
                )
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[100],
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_double_arrow_down, size: 32, color: Colors.black),
                    )
                  )
                ]
              )
            ),
          ]
        )
      ),
    );
  }
}


class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/짱구.png'),
            ),
            accountName: Text("짱구", style: TextStyle(fontSize: 20, color: Colors.black87)),
            accountEmail: Text("zzanggu", style: TextStyle(fontSize: 16, color: Colors.black87)),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )
            )
          ),
          ListTile(
            leading: Icon(Icons.grade),
            iconColor: Colors.blue,
            focusColor: Colors.blue,
            title: Text("TOP100 차트", style: TextStyle(fontSize: 18, color: Colors.black87)),
            trailing: Icon(Icons.navigate_next)
          ),
          ListTile(
            leading: Icon(Icons.person),
            iconColor: Colors.blue,
            focusColor: Colors.blue,
            title: Text("마이페이지", style: TextStyle(fontSize: 18, color: Colors.black87)),
            trailing: Icon(Icons.navigate_next)
          ),
          ListTile(
            leading: Icon(Icons.settings),
            iconColor: Colors.blue,
            focusColor: Colors.blue,
            title: Text("설정", style: TextStyle(fontSize: 18, color: Colors.black87)),
            trailing: Icon(Icons.navigate_next)
          ),
          ListTile(
            leading: Icon(Icons.login),
            iconColor: Colors.grey,
            focusColor: Colors.grey,
            title: Text("닫기", style: TextStyle(fontSize: 18, color: Colors.black87)),
            onTap: () {
              Navigator.pop(context);
            }
          )
        ]
      )
    );
  }
}
