import 'dart:html';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:progresso/progresso.dart';

final double coverHeight = 280;
final double profileHeight = 200;
final top = coverHeight - profileHeight / 2;
final bottom = profileHeight / 2;
const myProfileColor = Color(0xFFE0FA89F);
var nameStyle = TextStyle(fontSize: 24);
var otherStyle = TextStyle(fontSize: 18);
String aboutme = ("my name is");

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          topBar(),
          Column(
            children: [
              SizedBox(
                height: 2,
              ),
              nameDisplay(),
              Divider(),
              socialMediaButton(),
              SizedBox(
                height: 10,
              ),
              Divider(),
              aboutSection(),
              SizedBox(height: 20),
              mySkillColumn()
            ],
          ),
        ],
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Flutter with Pradeep Khadka"),
        ],
      ),
    );
  }
}

Widget buildCoverImage() => Container(
      width: double.infinity,
      height: coverHeight,
      child: Image.asset(
        "assets/coverphoto.jpg",
      ),
      decoration: BoxDecoration(
        //color: myProfileColor,
        borderRadius: const BorderRadius.only(
            bottomLeft: const Radius.circular(15),
            bottomRight: const Radius.circular(15)),
      ),
    );

Widget buildProfileImage() => CircleAvatar(
      backgroundColor: Colors.white,
      radius: profileHeight / 2,
      child: CircleAvatar(
        backgroundImage: AssetImage("logo.jpg"),
        radius: (profileHeight / 2) - 2,
      ),
    );

Widget topBar() => Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: bottom), child: buildCoverImage()),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );

Widget nameDisplay() => Column(
      children: [
        Text(
          "Pradeep Khadka",
          style: GoogleFonts.pacifico(textStyle: nameStyle),
        ),
        SizedBox(
          height: 5,
        ),
        Text("BIM Student",
            style: GoogleFonts.sairaCondensed(textStyle: otherStyle)),
        Text("Junior Flutter Developer",
            style: GoogleFonts.sairaCondensed(textStyle: otherStyle)),
      ],
    );

Widget aboutSection() => Container(
    margin: EdgeInsets.all(8),
    padding: EdgeInsets.all(8),
    color: Colors.grey[400],
    height: 100,
    width: double.infinity,
    child: Column(
      children: [
        Text("About", style: GoogleFonts.aBeeZee(textStyle: nameStyle)),
        Flexible(
          child: Text(
            "I'm currently pursuing Bachelor Degree in Information and Management. I'm an Enthusiastic Introvert, traveller and Flutter Developer.",
            style: GoogleFonts.sairaCondensed(textStyle: otherStyle),
          ),
        )
      ],
    ));

Widget socialMediaButton() => Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.facebook,
                  //size: 30,
                )),
            Text("Pradeep Khadka",
                style: GoogleFonts.sairaCondensed(textStyle: otherStyle)),
            IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.instagram,
                  //size: 30,
                )),
            Text("_pkbhardwaj",
                style: GoogleFonts.sairaCondensed(textStyle: otherStyle)),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.email),
                ),
                Text("impkubha@gmail.com",
                    style: GoogleFonts.sairaCondensed(textStyle: otherStyle)),
                IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      //size: 30,
                    )),
                Text("impkubha",
                    style: GoogleFonts.sairaCondensed(textStyle: otherStyle)),
              ],
            )
          ],
        )
      ],
    );

Widget mySkillColumn() => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("My Skills and Expertise",
            style: GoogleFonts.aBeeZee(textStyle: nameStyle)),
      ],
    );
