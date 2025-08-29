import 'package:familyhome/screens/data.dart';
import 'package:flutter/material.dart';

class userProfileImage extends StatelessWidget {
  final String imageUrl;
  final double size;

  const userProfileImage({
    super.key,
    required this.imageUrl,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    bool isNetworkImage =
        imageUrl.startsWith('http') || imageUrl.startsWith('https');
    /*لو عايزين نخليها نستخدم صورة من عالنت او من موقع*/
    return ClipRRect(
      borderRadius: BorderRadius.circular(size/2 - size/10),
      child: isNetworkImage
      /*لو عايزين نخليها نستخدم صورة من عالنت او من موقع*/
          ? Image.network(
        imageUrl,
        width: size,
        height: size,
        fit: BoxFit.cover,
      )
            : Image.asset(
        imageUrl,
        width: size,
        height: size,
        fit: BoxFit.cover,
         )
    );
  }
}
