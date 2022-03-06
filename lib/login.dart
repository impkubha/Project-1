import 'dart:html';

import 'package:alert_dialog_box/alert_dialog_box.dart';
import 'package:blogapp/BlogCard.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? username;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Login"),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: TextField(
                onChanged: (value) {
                  username = value;
                },
                decoration: InputDecoration(
                    hintText: "Enter your username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              child: TextField(
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
                onPressed: () {
                  if (username == "pradeep" && password == "12345") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BlogCard()),
                    );
                  } else {
                    CustomAlertDialog.showCustomAlertBox(
                      context: context,
                      willDisplayWidget: Container(
                        margin: const EdgeInsets.all(2.0),
                        child: const Text(
                            'Input creditentials are incorrect. Please try again.'),
                      ),
                    );
                  }
                },
                child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
