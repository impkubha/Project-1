import 'package:blogapp/comment.dart';
import 'package:flutter/material.dart';
import 'BlogDataModel.dart';

//String Value = "khatra";
//var listComment = [""];

//addComment(String Value) {
//listComment.add(Value);
//}

class BlogDetail extends StatelessWidget {
  final BlogDataModel blogDataModel;
  final int counter = 0;

  const BlogDetail({Key? key, required this.blogDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(blogDataModel.name),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset(blogDataModel.ImageUrl),
            ),
            Text(
              blogDataModel.genre,
              style: TextStyle(
                color: Colors.pink,
                fontSize: 14,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  blogDataModel.uploadTime,
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.timer,
                  size: 25,
                ),
                SizedBox(width: 50),
                IconButton(
                    onPressed: () {
                      //_iconColor = Colors.blue;
                    },
                    icon: Icon(
                      Icons.thumb_up,
                      color: _iconColor,
                    )),
              ],
            ),
            SizedBox(height: 10),
            Text(
              blogDataModel.desc,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: MyCommentDisplay())
          ],
        ),
      ),
    );
  }
}

Color _iconColor = Colors.black;
