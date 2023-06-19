import 'package:flutter/material.dart';
import 'package:week6/post.dart';

import 'editPage.dart';
import 'main.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key, required this.index});
  final int index;

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('글 확인'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Text(getPostTitle(widget.index), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              height: 400,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Text(getPostContents(widget.index)),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => EditPage(index: widget.index,))).then((value) => setState(() {}));
                  },
                  child: Text('수정'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    deletePost(widget.index);
                    Navigator.pop(context);
                  },
                  child: Text('삭제'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
