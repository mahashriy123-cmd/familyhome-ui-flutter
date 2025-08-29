import 'package:familyhome/screens/data.dart';
import 'package:familyhome/widget/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomUserProfile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double size;
  final bool isNew;
  final bool isMuted;

  const RoomUserProfile({
    super.key,
    required this.imageUrl,
    required this.name,
     this.size = 42,
     this.isNew = false,
     this.isMuted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: userProfileImage(imageUrl: imageUrl, size: size),
            ),
            if (isNew)
              Positioned(
                left: 0,
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Text("🎉", style: TextStyle(fontSize: 18)),
                  ),
                ),
              ),
            if (isMuted)
              Positioned(
                right: 0,
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Icon(CupertinoIcons.mic_slash_fill),
                  ),
                ),
              ),
          ],
        ),
        Flexible(child: Text(name, overflow: TextOverflow.ellipsis)),
      ],
    );
  }
}
