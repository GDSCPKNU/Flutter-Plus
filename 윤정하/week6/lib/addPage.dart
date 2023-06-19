import 'package:flutter/material.dart';
import 'package:week6/post.dart';

import 'main.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final _titleController = TextEditingController();
  final _contentsControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                hintText: '제목',
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
                  addPost(_post);

                  Navigator.pop(context);
                },
              child: Text('완료'),
            ),
          ],
        ),
      ),
    );
  }

  void _recordLapTime(String time) {
  }
}
