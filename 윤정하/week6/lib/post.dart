import 'package:flutter/material.dart';
import 'package:week6/viewPage.dart';

class Post {
  String title;
  String contents;

  Post(
      {required this.title,
      required this.contents});
}

List<Post> _postList = [];

void addPost(Post _post) {
  _postList.add(_post);
}

void editPost(Post _post, int index){
  _postList[index] = _post;
}

String getPostTitle(index){
  return _postList[index].title;
}

String getPostContents(index){
  return _postList[index].contents;
}

void deletePost(int index){
  _postList.removeAt(index);
}

class ShowPost extends StatefulWidget{
  const ShowPost({super.key});

  @override
  State<ShowPost> createState() => _ShowPostState();
}

class _ShowPostState extends State<ShowPost>{

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _postList.length,
      itemBuilder: (context, index){
        return ListTile(
          onTap: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ViewPage(index: index))).then((value) => setState(() {}));
          },
          title: Text(_postList[index].title),
        );
      },
    );
  }
}