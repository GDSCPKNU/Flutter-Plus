import 'package:flutter/material.dart';
import 'package:week_2/components/recentPlay.dart';
import 'package:week_2/components/recommendList.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: _pageAppBar(),
    body: _pageBody(),
    bottomNavigationBar: _pageBottomBar(),
    );
  }

  AppBar _pageAppBar() {
    return AppBar(
      title: const Text('지금 듣기',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              )
            ),
      centerTitle: false,
      backgroundColor: Colors.white,
      toolbarHeight:80,
      elevation: 0,
    );
  }

  Container _pageBody() {
    return Container(
      color: Colors.white,
      height: double.infinity,
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(top: 10),
      child: ListView(
        children: [
          RecommendList(),
          SizedBox(height: 30,),
          RecentPlay()
        ],
      ),
    );
  }

  BottomAppBar _pageBottomBar() {
    return BottomAppBar(
      height: 200,
      elevation: 20,
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Column(
        children: [
          _playNav(),
          Container( height:1.0,
          width: double.maxFinite,
          color:Colors.black12,
          margin: EdgeInsets.fromLTRB(0, 20, 0, 20),),
          _bottomNav()
        ],
      )
    );
  }

  Row _playNav() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset("assets/image4.jpg", width: 50, height: 50,)
        ),
        Text(
          "우린 노래가 될까",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15),
        ),
        SizedBox(width: 120,),
        Icon(Icons.play_arrow),
        Icon(Icons.pause_sharp),
      ],
    );
  }

  Row _bottomNav() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.favorite),
            SizedBox(height: 4,),
            Text("지금 듣기")
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.record_voice_over),
            SizedBox(height: 4,),
            Text("둘러보기")
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.radio),
            SizedBox(height: 4,),
            Text("라디오")
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.audiotrack),
            SizedBox(height: 4,),
            Text("보관함")
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.search),
            SizedBox(height: 4,),
            Text("검색")
          ],
        ),
      ],
    );
  }
}