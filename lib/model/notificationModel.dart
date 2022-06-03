class NotificationModel {
  final String name;
  final String avatar;
  final String time;
  final String description;

  NotificationModel({
    required this.name,
    required this.avatar,
    required this.time,
    required this.description,
  });
}

List<NotificationModel> notificationData = [
  NotificationModel(
    name: "Kethy",
    avatar: "images/friends/f1.jpg",
    time: "9 min ago",
    description: "like Entartain",
  ),
  NotificationModel(
    name: "Emma",
    avatar: 'images/friends/f2.jpg',
    time: "10 min ago",
    description: "sent friend request",
  ),
  NotificationModel(
    name: "Kethy",
    avatar: "images/friends/f1.jpg",
    time: "9 min ago",
    description: "liked your page Entertainjet",
  ),
  NotificationModel(
    name: "Emma",
    avatar: 'images/friends/f2.jpg',
    time: "10 min ago",
    description: "sent friend request",
  ),
  NotificationModel(
    name: "Vikash",
    avatar: 'images/friends/f3.jpg',
    time: "1 hour ago",
    description: "love react on your profile picture",
  ),
  NotificationModel(
    name: "Sameer",
    avatar: 'images/friends/f4.jpg',
    time: "20/04/2021",
    description: "love react on your post",
  ),
  NotificationModel(
    name: "Kunal",
    avatar: 'images/friends/f6.jpg',
    time: "20/04/2021",
    description: "like your post",
  ),
  NotificationModel(
    name: "Kethy",
    avatar: 'images/friends/f7.jpg',
    time: "20/04/2021",
    description: "love react on your post",
  ),
  NotificationModel(
    name: "Ranjan",
    avatar: 'images/friends/f8.jpg',
    time: "20/04/2021",
    description: "like khanai",
  ),
];
