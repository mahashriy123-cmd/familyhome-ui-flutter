import 'package:familyhome/models/room.dart';
import 'package:familyhome/screens/room_screen.dart';
import 'package:familyhome/widget/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.of(context).push(MaterialPageRoute
        (fullscreenDialog: true , builder: (_)=>RoomScreen(room: room)
      
      )),
      child: Padding(
        padding: const EdgeInsets.all( 2.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius : BorderRadius.circular(24) ,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${room.club} 🏠".toUpperCase(),
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.0,
                  ),
                ),
                Text(
                  room.name,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            userProfileImage(
                              imageUrl: room.speakers[0].imageURL,
                              size: 48,
                            ),
                            Positioned(
                              left: 28,
                              top: 24,
                              child: userProfileImage(
                                imageUrl: room.speakers[1].imageURL,
                                size: 48,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
      
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...room.speakers.map(
                                (e) => Text(
                                  "${e.firstName} ${e.lastName}💬💬",
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodySmall!.copyWith(fontSize: 15),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text.rich(
                                style: TextStyle(color: Colors.grey[600]),
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          "${room.speakers.length + room.fllowedBySpeakers.length + room.others.length}",
                                    ),
      
                                    WidgetSpan(
                                      child: Icon(
                                        CupertinoIcons.person_fill,
                                        size: 18,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    TextSpan(text: " / ${room.speakers.length}"),
                                    WidgetSpan(
                                      child: Icon(
                                        CupertinoIcons.chat_bubble_fill,
                                        size: 18,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
