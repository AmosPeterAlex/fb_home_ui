import 'package:flutter/material.dart';

class ProfilePics extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double profWidth;
  final double profHeight;

  const ProfilePics(
      {super.key,
      required this.displayImage,
      required this.displayStatus,
      this.displayBorder = false,
      this.profWidth = 50,
      this.profHeight = 50});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                ? Border.all(width: 3, color: Color(0xff0866ff))
                : const Border(),
          ),
          padding: const EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(180),
            child:
                Image.asset(displayImage, height: profHeight, width: profWidth),
          ),
        ),
        // statusIndicator,
        displayStatus == true
            ? Positioned(
                bottom: 0.1,
                right: 1.0,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2)),
                ))
            : const SizedBox()
      ],
    );
  }
}
