import 'dart:math';

import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/image/profile.jpeg'),
            ),
            Spacer(),
            Text(
              'Avesh Prajapati',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              'Flutter Developer & Pursuing BCA Degree \n From SSIU University',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, height: 1.5,color:Colors.white60 ),
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
