import 'package:facebook_ui/model/storyModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10.0,
          children: [
            Container(
              height: 250,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),

              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 25.0),
                          height: 170,
                          width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        child: Image(
                          image: AssetImage('images/user/kami.jpg'

                        ),
                      ),
                    ),
                        ),
                        TextButton(onPressed: (){}, child: Text('Add to Story',

                        style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                        )
                  ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 50.0,
                    left: 40.0,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_rounded),
                    iconSize: 45.0,
                      color: Colors.blueAccent,
                    ),
                  ),

                ],

              ),
            ),
            Container(
              height: 250,
              width: 150,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(image: AssetImage('images/user/user1.jpg'),
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 10.0,
                    child: Text("It'z Aami",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),),

                  )
                ],
              ),
            ),
            for(var i=0; i<storyData.length; i++)...[
              Container(
                height: 250,
                width: 150,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    GestureDetector(
                      onTap: storyData[i].onTap,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(image: AssetImage(storyData[i].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 10.0,
                      child: Text(storyData[i].userName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),),

                    )
                  ],
                ),
              )
            ]

          ],
        ),

      ),
    );
  }
}
