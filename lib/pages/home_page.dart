import 'package:facebook_ui/widgets/home/menuBar.dart';
import 'package:facebook_ui/widgets/home/post.dart';
import 'package:facebook_ui/widgets/home/postBar.dart';
import 'package:facebook_ui/widgets/home/storyBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 11.5),
      child: ListView(
        children: [
          PostBar(),
          Divider(thickness: 1,color: Colors.black12,
          ),
          MenuBar(),
          Divider(thickness: 7,color: Colors.black12,
          ),
          StoryBar(),
          Divider(thickness: 7,color: Colors.black12,
          ),
          Post()

        ],
      ),
    );
  }
}
