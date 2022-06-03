import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostBar extends StatelessWidget {
  const PostBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          iconSize: 50,
          onPressed: (){},
            icon: CircleAvatar(
              radius: 80.0,

              backgroundImage: AssetImage('images/user/kami.jpg',
              ),

            ),
        ),
        TextButton(onPressed: (){}, child: Text("What's on your mind?",
        style: TextStyle(

            color: Colors.grey[600],
          fontSize: 18,

        ),

        ),
        ),
        Container(
          height: 60,
          child: VerticalDivider(
            color: Colors.black26,

          ),
        ),
        Column(
          children: [
            IconButton(onPressed: (){},
              icon: Icon(
                  Icons.photo_album_outlined,
              ),
            ),
            Text('Photo')
          ],
        )
      ],
    );
  }
}
