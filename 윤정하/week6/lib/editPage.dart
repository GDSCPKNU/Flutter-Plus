import 'package:flutter/material.dart';
import 'package:week6/post.dart';

import 'main.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key, required this.index});
  final int index;

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {

  @override
  Widget build(BuildContext context) {
    final _titleController = TextEditingController(text: getPostTitle(widget.index));
    final _contentsControler = TextEditingController(text: getPostContents(widget.index));

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('글 작성'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                ),
              ),
              controller: _titleController,
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return '내용을 입력해 주세요';
                }
                return null;
              },
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: 20,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                ),
                hintText: '내용',
              ),
              controller: _contentsControler,
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return '내용을 입력해 주세요';
                }
                return null;
              },
            ),

            ElevatedButton(
              onPressed: () {
                  Post _post = new Post(
                    title: _titleController.text,
                    contents: _contentsControler.text
                  );
                  editPost(_post, widget.index);
                  Navigator.pop(context);
                },
              child: Text('완료'),
            ),
          ],
        ),
      ),
    );
  }

}
