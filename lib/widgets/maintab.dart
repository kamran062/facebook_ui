import 'package:badges/badges.dart';
import 'package:facebook_ui/pages/friend_page.dart';
import 'package:facebook_ui/pages/home_page.dart';
import 'package:facebook_ui/pages/market_page.dart';
import 'package:facebook_ui/pages/message_page.dart';
import 'package:facebook_ui/pages/notification_page.dart';
import 'package:facebook_ui/pages/video_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'home/myDrawer.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.home_outlined)),
    Tab(icon: Icon(Icons.people_outlined)),
    Tab(icon: Icon(Icons.message_outlined)),
    Tab(
      icon: Badge(
        position: BadgePosition.topEnd(top: -20, end: -5),
        badgeContent: Text(
          '3',
          style: TextStyle(fontSize: 18),
        ),
        child: Icon(Icons.notifications_outlined),
      ),
    ),
    Tab(icon: Icon(Icons.video_library_outlined)),
    Tab(icon: Icon(Icons.shopping_bag_outlined)),
  ];
  @override
  void initState() {
    _tabController =
        TabController(length: topTabs.length, vsync: this, initialIndex: 0)
          ..addListener(() {
            setState(() {});
          });
    super.initState();
  }

  Future<bool> _owWillPop() async {
    if (_tabController?.index == 0) {
      await SystemNavigator.pop();
    }
    Future.delayed(
      Duration(milliseconds: 200),
    );
    return _tabController?.index == 0;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _owWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(
            'facebook',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34,
                color: Colors.blue[700],
                letterSpacing: -1.12),
          ),
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: Icon(Icons.menu),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            )
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: topTabs,
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: MyDrawer(),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            HomePage(),
            FriendsPage(),
            MessagePage(),
            NotificationPage(),
            VideoPage(),
            MarketPage()
          ],
        ),
      ),
    );
  }
}

class VideoModel {
  final String? videoPostLink;
  final String? videoPostLinkk;

  VideoModel({this.videoPostLinkk, this.videoPostLink});

  List videoData = [
    VideoModel(
      videoPostLink: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=1yYeURgdZ4M&t=406s&ab_channel=Entertainjet"),
    ),
    VideoModel(
      // avatarOnPressed: () => print('Avatar Clicked'),
      // avatarImage: "images/user/u2.jpg",
      // name: 'Raj',
      // time: '8 min ago',
      // moreOnPressed: () => print('More Clicked'),
      // videoPostTitle:
      // 'Like and Share this post',
      videoPostLink: YoutubePlayer.convertUrlToId(
          'https://www.youtube.com/watch?v=4gq2S1SypaU&list=PLP0hEOdmH6bIllmPYv4MPSYtnMQv86vY9&index=2&ab_channel=Entertainjet'),
      // likeOnPressed: () => print('Like Clicked'),
      // commentOnPressed: () => print('Comment Clicked'),
      // shareOnPressed: () => print('Share Clicked'),
    ),
    VideoModel(
      // avatarOnPressed: () => print('Avatar Clicked'),
      // avatarImage: "images/user/u3.jpg",
      // name: 'Vincenzo Cassano',
      // time: '8 min ago',
      // moreOnPressed: () => print('More Clicked'),
      // videoPostTitle:
      // 'Like and Share this post',
      videoPostLink: YoutubePlayer.convertUrlToId(
          'https://www.youtube.com/watch?v=mf9Uj8q6fB8&list=PLP0hEOdmH6bIllmPYv4MPSYtnMQv86vY9&index=3&ab_channel=Entertainjet'),
      // likeOnPressed: () => print('Like Clicked'),
      // commentOnPressed: () => print('Comment Clicked'),
      // shareOnPressed: () => print('Share Clicked'),
    ),
  ];
}
