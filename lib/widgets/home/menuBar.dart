import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(onPressed: (){},
            child: Row(
          children: [
            Icon(Icons.post_add_outlined),
            Text(
              'Text',
            style: TextStyle(fontSize: 18,
            color: Colors.grey[600]
            ),
            )
          ],
        ),
        ),
       TextButton(onPressed: (){},
          child: Row(
            children: [
              Icon(Icons.video_call,
              color: Colors.redAccent,),
              Text(
                'Video Live',
                style: TextStyle(fontSize: 18,
                    color: Colors.grey[600]
                ),
              )
            ],
          ),
        ),
        Container(
          height: 40, child: VerticalDivider(color: Colors.black26,
        ),
        ),TextButton(onPressed: (){},
          child: Row(
            children: [
              Icon(Icons.location_on,
              color: Colors.redAccent,),
              Text(
                'Location',
                style: TextStyle(fontSize: 18,
                    color: Colors.grey[600]
                ),
              )
            ],
          ),
        ),

      ],



    );
  }
}
