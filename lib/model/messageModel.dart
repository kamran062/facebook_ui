import 'package:flutter/material.dart';

class MessagesModel {
  final String name;
  final String time;
  final String avatar;
  final Icon status;

  MessagesModel({
    required this.name,
    required this.time,
    required this.avatar,
    required this.status,
  });
  static Icon statusOnline = Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.green,
  );
  static Icon statusOffline = Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.black38,
  );
}
List<MessagesModel> messageData=[
  MessagesModel(name: "It'z Aami", time: '10.29', avatar: "images/friends/f1.jpg", status: MessagesModel.statusOffline),
  MessagesModel(name: "It'z Rhul", time: '10.29', avatar: "images/friends/f2.jpg", status: MessagesModel.statusOnline),
  MessagesModel(name: "It'z sunny", time: '10.29', avatar: "images/friends/f3.jpg", status: MessagesModel.statusOffline),
  MessagesModel(name: "It'z funny", time: '10.29', avatar: "images/friends/f4.jpg", status: MessagesModel.statusOnline),
  MessagesModel(name: "It'z naughty", time: '10.29', avatar: "images/friends/f6.jpg", status: MessagesModel.statusOnline),
  MessagesModel(name: "It'z emma", time: '10.29', avatar: "images/friends/f7.jpg", status: MessagesModel.statusOnline),
  MessagesModel(name: "It'z Ami", time: '10.29', avatar: "images/friends/f8.jpg", status: MessagesModel.statusOffline),
  MessagesModel(name: "It'z minie", time: '10.29', avatar: "images/friends/f9.jpg", status: MessagesModel.statusOnline),
  MessagesModel(name: "It'z jony", time: '10.29', avatar: "images/friends/f10.jpg", status: MessagesModel.statusOffline),
];
