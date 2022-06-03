import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoModel {
  final String? videoPostLink;
  final String? videoPostLinkk;
  void Function() avatarOnPressed;
  void Function() moreOnPressed;
  void Function() likeOnPressed;
  void Function() commentOnPressed;
  void Function() shareOnPressed;
  String avatarImage;
  String name;
  var time;
  var videoPostTitle;

  VideoModel(
      {this.videoPostLinkk,
      this.videoPostLink,
      required this.avatarOnPressed,
      required this.avatarImage,
      required this.name,
      this.time,
      required this.commentOnPressed,
      required this.likeOnPressed,
      required this.moreOnPressed,
      required this.shareOnPressed,
      this.videoPostTitle});

  static List videoData = [
    VideoModel(
      avatarOnPressed: () => print('Avatar Clicked'),
      avatarImage: "images/user/u2.jpg",
      name: 'Raj',
      time: '8 min ago',
      moreOnPressed: () => print('More Clicked'),
      videoPostTitle: 'Like and Share this post',
      videoPostLink: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=1yYeURgdZ4M&t=406s&ab_channel=Entertainjet"),
      likeOnPressed: () => print('Like Clicked'),
      commentOnPressed: () => print('Comment Clicked'),
      shareOnPressed: () => print('Share Clicked'),
    ),
    VideoModel(
      avatarOnPressed: () => print('Avatar Clicked'),
      avatarImage: "images/user/u2.jpg",
      name: 'Raj',
      time: '8 min ago',
      moreOnPressed: () => print('More Clicked'),
      videoPostTitle: 'Like and Share this post',
      videoPostLink: YoutubePlayer.convertUrlToId(
          'https://www.youtube.com/watch?v=4gq2S1SypaU&list=PLP0hEOdmH6bIllmPYv4MPSYtnMQv86vY9&index=2&ab_channel=Entertainjet'),
      likeOnPressed: () => print('Like Clicked'),
      commentOnPressed: () => print('Comment Clicked'),
      shareOnPressed: () => print('Share Clicked'),
    ),
    VideoModel(
      avatarOnPressed: () => print('Avatar Clicked'),
      avatarImage: "images/user/u3.jpg",
      name: 'Vincenzo Cassano',
      time: '8 min ago',
      moreOnPressed: () => print('More Clicked'),
      videoPostTitle: 'Like and Share this post',
      videoPostLink: YoutubePlayer.convertUrlToId(
          'https://www.youtube.com/watch?v=mf9Uj8q6fB8&list=PLP0hEOdmH6bIllmPYv4MPSYtnMQv86vY9&index=3&ab_channel=Entertainjet'),
      likeOnPressed: () => print('Like Clicked'),
      commentOnPressed: () => print('Comment Clicked'),
      shareOnPressed: () => print('Share Clicked'),
    ),
  ];
}
