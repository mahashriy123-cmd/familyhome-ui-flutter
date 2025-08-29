import 'dart:math';

import 'package:familyhome/models/room.dart';
import 'package:familyhome/screens/data.dart';
import 'package:familyhome/widget/room_user_profile.dart';
import 'package:familyhome/widget/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomScreen extends StatelessWidget {
  final Room room;

  const RoomScreen({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 130,
        leading: TextButton.icon(
          style: TextButton.styleFrom(foregroundColor: Colors.black),
          icon: const Icon(CupertinoIcons.chevron_down, size: 28),
          onPressed: () => Navigator.of(context).pop(),
          label: const Text(
            "Halloway",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.doc, size: 28),
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: userProfileImage(size: 35, imageUrl: currentUser.imageURL),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${room.club} 🏠".toUpperCase(),
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.0,
                        ),
                      ),
                      Icon(CupertinoIcons.ellipsis),
                    ],
                  ),
                  Text(
                    room.name,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                children: room.speakers
                    .map(
                      (e) => RoomUserProfile(
                        imageUrl: e.imageURL,
                        name: e.firstName,
                        size: 66,
                        isMuted: Random().nextBool(),
                        isNew: Random().nextBool(),
                      ),
                    )
                    .toList(),
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                "Flowed by Speakers",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 15.0,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                childAspectRatio: 0.7,
                children: room.fllowedBySpeakers
                    .map(
                      (e) => RoomUserProfile(
                        imageUrl: e.imageURL,
                        name: e.firstName,
                        size: 66,
                        isNew: Random().nextBool(),
                      ),
                    )
                    .toList(),
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                "others in the room",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 15.0,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                childAspectRatio: 0.7,
                children: room.others
                    .map(
                      (e) => RoomUserProfile(
                        imageUrl: e.imageURL,
                        name: e.firstName,
                        size: 66,
                        isNew: Random().nextBool(),
                      ),
                    )
                    .toList(),
              ),
            ),
            SliverPadding(padding: EdgeInsets.only(bottom: 50))
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(12),
          backgroundColor: Colors.grey[300],

        ),
              child: Text(
                "✌️Leave Quietly",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

            ),
            Row(children: [
              GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                      padding: EdgeInsets.all(6),
                  child: Icon(CupertinoIcons.add,
                  size: 30,),
                ),
              ),
              SizedBox(width: 12,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.all(6),
                  child: Icon(CupertinoIcons.hand_raised,
                    size: 30,),
                ),
              )
            ]

            )
          ],
        ),
      ),
    );
  }
}
