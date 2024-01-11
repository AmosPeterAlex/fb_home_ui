import 'package:fb_clone/widgets/profile_pics.dart';
import 'package:flutter/material.dart';
import 'package:fb_clone/assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ProfilePics(displayImage: me, displayStatus: false),
      title: const TextField(
        decoration: InputDecoration(
            hintText: "What's on your Mind?",
            hintStyle: TextStyle(color: Colors.black),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none),
      ),
    );
  }
}
