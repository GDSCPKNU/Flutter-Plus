import 'package:flutter/material.dart';

class RecentPlay extends StatelessWidget {
  const RecentPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text("최근 재생한 음악",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _musicItem("image1", "오래오래", "죠지"),
                _musicItem("image2", "Antifreeze", "백예린"),
                _musicItem("image3", "여름가울겨울 봄.", "진나비"),
                _musicItem("image4", "항성통신", "너드커넥션"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _musicItem(String imageName, String musicTitle, String artist) {
    return Container(
      width: 100,
      height: 150,
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ]
            ),
            child: Image.asset("assets/$imageName.jpg"),
            ),
          SizedBox(height: 10),
          Text(
            "$musicTitle",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text("$artist")
        ],
      ),
    );
  }
}