import 'package:flutter/material.dart';

class RecommendList extends StatelessWidget {
  const RecommendList({super.key});

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
            child: const Text("인기 추천곡",
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
                _recommendItem("123", "image6", "돌 아 오 지 마", "밍기뉴"),
                _recommendItem("123", "image5", "Spicy", "aespa"),
                _recommendItem("123", "image7", "3", "615"),
                _recommendItem("123", "image8", "길었던 이야기", "김부경"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _recommendItem(String information, String imageName, String musicTitle, String artist) {
    return Container(
            width: 80,
            height: 180,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ],
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              children: [
                SizedBox( height: 130,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topRight:Radius.circular(10), topLeft: Radius.circular(10)),
                    child: Image.asset("assets/$imageName.jpg", fit: BoxFit.cover,))
                ),
                SizedBox(height: 10),
                Text("$musicTitle", 
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                Text("$artist"),
              ],
            ),
    );
  }
}