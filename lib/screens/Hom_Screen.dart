import 'package:familyhome/screens/data.dart';
import 'package:familyhome/widget/room_card.dart';
import 'package:familyhome/widget/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.search, size: 28),
          onPressed: () {},
        ),
        actions: [
          IconButton(icon: Icon(CupertinoIcons.envelope_open, size: 28), onPressed: () {}),
          IconButton(icon: Icon(CupertinoIcons.calendar, size: 28), onPressed: () {}),
          IconButton(icon: Icon(CupertinoIcons.bell, size: 28), onPressed: () {}),
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: userProfileImage (
                size:35 ,
                imageUrl:currentUser.imageURL  ,
            
              ),
            ),
          ) ,
        ],

      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
            children: [...roomList.map((e) => RoomCard(room : e))

            ],
          ),
          Positioned (

            left: 0,
            right: 0 ,bottom: 0,
            child: Container(
              height: 70, decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter, end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor.withAlpha(20),
                    Theme.of(context).scaffoldBackgroundColor,

                  ]
              )
            ),
            ),
          ),
          Positioned(
            bottom: 50,
            child: ElevatedButton.icon(
               style: ElevatedButton.styleFrom(
                 padding: EdgeInsets.all(12),
                 backgroundColor: Theme.of(context).colorScheme.secondary,
               ),
                onPressed: (){},

               icon:Icon (CupertinoIcons.add,
               size: 20,
               color:  Colors.white,),
                label:Text ("Start Room"
                , style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),
                )),
          )
        ],
      )
    );
  }
}
