import 'package:flutter/cupertino.dart';

class StoryModel {
  final VoidCallback onTap;
  final String image;
  final String userName;

  StoryModel({
    required this.onTap,
    required this.image,
    required this.userName,


});
}

List<StoryModel> storyData = [
  StoryModel(
    userName: "Ali Haidar",
    onTap: (){},
    image: "images/user/user2.jpg",

  ),
  StoryModel(
    userName: "Ali hassan",
    onTap: (){},
    image: "images/user/user1.jpg",

  ), StoryModel(
    userName: "Ali mohsin",
    onTap: (){},
    image: "images/user/user2.jpg",

  ), StoryModel(
    userName: "Ali wali",
    onTap: (){},
    image: "images/user/user3.jpeg",

  ),


];