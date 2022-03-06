import 'package:flutter/material.dart';

class MyCommentDisplay extends StatefulWidget {
  const MyCommentDisplay({Key? key}) : super(key: key);

  @override
  State<MyCommentDisplay> createState() => _MyCommentDisplayState();
}

class _MyCommentDisplayState extends State<MyCommentDisplay> {
  String value = "";
  var listTODO = [''];
  addTODO(String item) {
    setState(() {
      listTODO.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.send),
        onPressed: () {
          addTODO(value);
        },
      ),
      body: ListView.builder(
          itemCount: listTODO.length,
          itemBuilder: (context, index) {
            return index == 0
                ? Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      onChanged: (val) {
                        value = val;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Write a comment...',
                      ),
                    ),
                  )
                : ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text("Pradeep Khadka",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "${listTODO[index]}",
                    ),
                  );
          }),
    );
  }
}
