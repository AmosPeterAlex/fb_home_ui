import 'package:fb_clone/assets.dart';
import 'package:fb_clone/widgets/profile_pics.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          createRoomButton(),
          ProfilePics(
            displayImage: me,
            displayStatus: true,
          ),
          ProfilePics(
            displayImage: rincy,
            displayStatus: true,
          ),
          ProfilePics(
            displayImage: adolf,
            displayStatus: true,
          ),
          ProfilePics(
            displayImage: jeni,
            displayStatus: true,
          ),
          ProfilePics(
            displayImage: prasanth,
            displayStatus: true,
          ),
          ProfilePics(
            displayImage: greeshma,
            displayStatus: true,
          ),
          ProfilePics(
            displayImage: athulya,
            displayStatus: true,
          ),
          ProfilePics(
            displayImage: nigil,
            displayStatus: true,
          ),
          ProfilePics(
            displayImage: adolf,
            displayStatus: true,
          ),
          ProfilePics(
            displayImage: athulya,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: const EdgeInsets.only(left: 3, right: 5),
      child: OutlinedButton.icon(
          onPressed: () {
            // print('room button clicked');
          },
          style: OutlinedButton.styleFrom(shape: const StadiumBorder()),
          icon: const Icon(Icons.video_call, color: Colors.purple),
          label: const Text(
            'Create\nRoom',
            style: TextStyle(),
          )),
    );
  }
}
