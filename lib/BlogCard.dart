import 'package:blogapp/login.dart';
import 'package:flutter/material.dart';
import 'BlogDataModel.dart';
import 'BlogDetail.dart';
import 'package:blogapp/inbox.dart';
import 'package:blogapp/profile.dart';
import 'package:blogapp/setting.dart';

class BlogCard extends StatefulWidget {
  const BlogCard({Key? key}) : super(key: key);

  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  static List<String> blogTitle = [
    'My First Blog',
    'My Second Blog',
    'My Third Blog',
    'My Fourth Blog',
    'My Fifth Blog'
  ];

  static List url = [
    "/1.jpg",
    "/2.png",
    "/3.jpg",
    "/4.jpg",
    "/5.jpg",
  ];

  static List desc = [
    "How to build layouts using Flutters layout mechanism. Once youve learned basic principles, youll build the layout for a sample screenshot.",
    "Youll extend the simple layout app created in “Building Layouts in Flutter” to make an icon tappable. Different ways of managing a widgets state are also discussed.",
    "Explains the fundamental classes in the Flutter animation package (controllers, Animatable, curves, listeners, builders), as it guides you through a progression of tween animations using different aspects of the animation APIs.",
    "Learn how to internationalize your Flutter application. A guide through the widgets and classes that enable apps to display their content using the users language and formatting conventions.",
    "The Flutter tutorials teach you how to use the Flutter framework to build mobile applications for iOS and Android."
  ];

  static List genre = [
    "Philosophy",
    "Painting",
    "Love & Romance",
    "Thriller",
    "Sci-Fi"
  ];

  static List uploadTime = [
    "10th November",
    "14th June",
    "15th July",
    "25th December",
    "15th May"
  ];

  //static List likeCount = [55, 260, 122, 500, 89];

  final List<BlogDataModel> Blogdata = List.generate(
      blogTitle.length,
      (index) => BlogDataModel(
            '${blogTitle[index]}',
            '${url[index]}',
            '${desc[index]}',
            "${uploadTime[index]}",
            "${genre[index]}",
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog Page"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: Blogdata.length,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 10,
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Blogdata[index].genre,
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 14,
                        ),
                      ),
                      Text(Blogdata[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        Blogdata[index].uploadTime,
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.timer,
                        size: 15,
                      ),
                    ],
                  ),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(Blogdata[index].ImageUrl),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            BlogDetail(blogDataModel: Blogdata[index])));
                  },
                ),
              );
            }),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Pradeep Khadka"),
              accountEmail: Text("impkubha@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("/1.jpg"),
              ),
            ),
            ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BlogCard()),
                  );
                }),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
            ),
            ListTile(
              title: Text("Message"),
              leading: Icon(Icons.inbox),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Inbox()),
                );
              },
            ),
            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Setting()),
                );
              },
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ],
        ),
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
