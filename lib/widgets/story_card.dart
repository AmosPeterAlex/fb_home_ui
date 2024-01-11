import 'package:fb_clone/assets.dart';
import 'package:fb_clone/widgets/circular_button.dart';
import 'package:fb_clone/widgets/profile_pics.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  // const StoryCard({super.key});
  final String labelText;
  final String story;
  final String profilePics;
  final bool createstoryStatus;
  final bool displayBorder;

  StoryCard(
      {required this.labelText,
      required this.story,
      required this.profilePics,
      this.createstoryStatus = false,
      this.displayBorder = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 5),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 5,
              child: createstoryStatus
                  ? CircularButton(
                      buttonIcon: Icons.add,
                      buttonAction: () {
                        print("Create New Story");
                      },
                      iconColor: Colors.grey,
                    )
                  : ProfilePics(
                      profHeight: 35,
                      profWidth: 35,
                      displayImage: profilePics,
                      displayStatus: false,
                      displayBorder: true,
                    )),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                labelText != null ? labelText : "N/A",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
