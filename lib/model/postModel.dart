import 'package:flutter/cupertino.dart';

class PostModel {
  final VoidCallback avatarOnPressed;
  final String avtarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String postTitle;
  final String postImage;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  PostModel(
  {
    required this.avatarOnPressed,
    required this.avtarImage,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.postTitle,
    required this.postImage,
    required this.likeOnPressed,
    required this.commentOnPressed,
    required this.shareOnPressed,


});

}

List<PostModel> postData = [
  PostModel(
    avatarOnPressed: (){},
      avtarImage: 'images/user/kami.jpg',
      name: "It'z Aami",
      time: "5",
      moreOnPressed: (){},
      postTitle: "This is my new Profile Picture",
      postImage: 'images/user/kami.jpg',
      likeOnPressed: (){},
      commentOnPressed: (){},
      shareOnPressed: (){},
  ),
  PostModel(
    avatarOnPressed: (){},
    avtarImage: 'images/user/user1.jpg',
    name: "It'z Hadi",
    time: "2 minutes ago",
    moreOnPressed: (){},
    postTitle: "This is my new Picture",
    postImage: 'images/user/user1.jpg',
    likeOnPressed: (){},
    commentOnPressed: (){},
    shareOnPressed: (){},
  ),
  PostModel(
    avatarOnPressed: (){},
    avtarImage: 'images/user/user2.jpg',
    name: "It'z Ali",
    time: "5 minutes ago",
    moreOnPressed: (){},
    postTitle: "This is my new Clicked Picture",
    postImage: 'images/user/user2.jpg',
    likeOnPressed: (){},
    commentOnPressed: (){},
    shareOnPressed: (){},
  ),
  PostModel(
    avatarOnPressed: (){},
    avtarImage: 'images/user/user4.jpg',
    name: "It'z Nomi",
    time: "About 1 hr ago",
    moreOnPressed: (){},
    postTitle: "This is my new Clicked Picture",
    postImage: 'images/user/user3.jpeg',
    likeOnPressed: (){},
    commentOnPressed: (){},
    shareOnPressed: (){},
  ),

];

