import 'package:facebook_ui/model/friendModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

          margin: EdgeInsets.symmetric(horizontal: 20,
          vertical: 10.0),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Friends",
                  style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.person,
                          color: Colors.green,
                        ),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: (){
                          },
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: IconButton(
                        icon: Icon(Icons.people,
                        color: Colors.redAccent,),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: (){
                          },
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                    )
                  ],
                )
              ],
            )
        ),
        Divider(
          thickness: 1,
          color: Colors.black38,
        ),
        Expanded(child: ListView.builder(
          itemCount: friendData.length,
          itemBuilder: (context,i)=> Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage(friendData[i].avatar),

                ),
                title: Text(
                    friendData[i].name,
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Wrap(
                  spacing: 12,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Add Friend",

                    ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        primary: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                        textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                      ),
                    ),
                    TextButton(onPressed: (){}, child: Text("Remove",

                    ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey,
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                          textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                      ),
                    )
                  ],
                ),
                onTap: (){

                },
              )
            ],
          ),
        ))
      ],
    );
  }
}
