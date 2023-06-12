import 'dart:async';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp()); //앱 시작해주세요 앱 메인페이지 입력
}

class MyApp extends StatelessWidget { //앱 메인페이지 만듦 의미는 없음
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(// 이 위치에 코딩
      title: "Flutter Demo",
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: Memo(),
    );
  }
}
class Memo extends StatefulWidget {
  const Memo({Key? key}) : super(key: key);

  @override
  State<Memo> createState() => _MemoState();
}

class _MemoState extends State<Memo> { // Main_Page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
        Text("Memo"),
        backgroundColor: Colors.pinkAccent, // 앱바 색상을 지정
        centerTitle: true, // 글자의 위치를 가운데로 정렬시킴 (bool값)
      ),
      body: ShowPost(),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)
          => const Add())).then((value) => setState(() {}));
          // 하단의 +버튼을 누르면 Add페이지로 이동함
          // 상태까지 저장해줌
        },
          child: Icon(Icons.add),)
      ),
    );
  }
}

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final _formKey = GlobalKey<FormState>(); // form 상태를 얻기 위한 키
  final _titleController = TextEditingController(); // 유효성 검사를 위함
  final _contentsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
        Text("새 메모"),backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(padding: EdgeInsets.all(20),
        child: Container(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(decoration: InputDecoration(
                  hintText: "제목",
                  border: OutlineInputBorder(), // 가장자리 둥근 사각형으로 커스텀
                ),
                  controller: _titleController, // 컨트롤러 생성
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return '제목을 입력해 주세요';
                    }
                    return null;
                  },
                ), Padding(padding: EdgeInsets.all(8)),
                TextFormField(
                  decoration: InputDecoration(
                  hintText: "내용",
                  border: OutlineInputBorder(),
                ),
                  controller: _contentsController, // 유효성 검사
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return '내용을 입력해 주세요';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.multiline,
                  maxLines: 20,
                ), Padding(padding: EdgeInsets.all(8)),
                Container(alignment: Alignment.centerRight,
                    child: SizedBox(height: 40, width: 80,
                        child: ElevatedButton(onPressed: () {
                          if(_formKey.currentState!.validate()) { // 
                            // null이 아니어야 post (생성, 추가), 창 닫기
                            Post _post = new Post(
                                title: _titleController.text,
                                contents: _contentsController.text
                            );
                            addPost(_post);
                            Navigator.pop(context);
                          }
                        },
                          child: Text("완료"))
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Post { // 제목과 내용을 가지는 post 모델 생성하기
  String title;
  String contents;

  Post(
      {required this.title,
        required this.contents});
}

List<Post> _postList = []; // post list 만들기

void addPost(Post _post) { // post 추가
  _postList.add(_post);
}
void deletePost(int index){ // post 삭제
  _postList.removeAt(index);
}
String getPostTitle(index){
  return _postList[index].title;
}
String getPostContents(index){
  return _postList[index].contents;
}
class ShowPost extends StatefulWidget {
  const ShowPost({Key? key}) : super(key: key);

  @override
  State<ShowPost> createState() => _ShowPostState();
}

class _ShowPostState extends State<ShowPost> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: _postList.length, // list에 그려질 child의 개수
        itemBuilder: (context, index) { // child가 화면에 보여야 할 때 생성
          return ListTile(
              onTap: (){ // 타일이 눌러졌을 때
                Navigator.push(
                    context, MaterialPageRoute(builder: (context)
                => Read(index: index))).then((value) => setState(() {}));
              },
            title: Text(_postList[index].title)
          );
        },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }
}
class Read extends StatefulWidget { // 아래의 두 줄 잘 모르겠음
  const Read({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("글 확인"),backgroundColor: Colors.pinkAccent),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  border : Border.all(color : Colors.grey),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Text(getPostTitle(widget.index),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ), SizedBox(height: 8),
            Container(padding: EdgeInsets.all(8),
              width: double.infinity, height: 400,
              decoration: BoxDecoration(
                  border : Border.all(color : Colors.grey),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Text(getPostContents(widget.index),
                  style: TextStyle(fontSize: 18)),
            ),
          ],
      ),
      ),
        bottomNavigationBar: BottomAppBar(
          child: ElevatedButton(
            onPressed: () {
              deletePost(widget.index);
              Navigator.pop(context);
            },
            child: Icon(Icons.remove),
          ),
        )
    );
  }
}


