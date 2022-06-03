import 'package:facebook_ui/model/postModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
      for(var i=0; i< postData.length; i++)...[
        Row(

        children: [

          IconButton(
            iconSize: 50,
            onPressed: (){},
            icon: CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage(postData[i].avtarImage),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(postData[i].name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Wrap(

                  children: [
                    Text(
                      postData[i].time,
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Icon(

                        Icons.public),
                  ],
                )
              ],
            ),
          ),
          IconButton(
            iconSize: 30,
            onPressed: postData[i].moreOnPressed, icon: Icon(Icons.more_horiz_outlined),
          )

        ],
      ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(8.0),
                child: Text(
                  postData[i].postTitle,
                  style: TextStyle(
                    color: Colors.black,
                fontSize: 18,
                ),
                ),
                ),
                Image(image: AssetImage(postData[i].postImage),
                )
              ],
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  IconButton(onPressed: postData[i].likeOnPressed, icon: Icon(Icons.thumb_up_alt_outlined),
                  ),
                  Text(postData[i].time,
                    style: TextStyle(fontSize: 12.0),)
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: postData[i].commentOnPressed, icon: Icon(Icons.message_outlined),
                      ),
                      Text('10',style: TextStyle(fontSize: 12.0),)
                    ],
                  )
                ],
              ), Row(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: postData[i].shareOnPressed, icon: Icon(Icons.share_outlined),
                      ),
                      Text('',style: TextStyle(fontSize: 12.0),)
                    ],
                  )
                ],
              )
            ],
          ),
      ],
        ],
      ),
    );
  }
}
