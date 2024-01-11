import 'package:fb_clone/assets.dart';
import 'package:fb_clone/sections/header_button_section.dart';
import 'package:fb_clone/widgets/blue_tick.dart';
import 'package:fb_clone/widgets/header_button.dart';
import 'package:fb_clone/widgets/profile_pics.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  //const PostCard({super.key});

  final String profPic;
  final String name;
  final String timePosted;
  final String captionPosted;
  final String imagePosted;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  PostCard(
      {required this.profPic,
      required this.name,
      required this.timePosted,
      required this.captionPosted,
      required this.imagePosted,
      this.showBlueTick = false,
      required this.likeCount,
      required this.commentCount,
      required this.shareCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        postCardHeader(),
        titleSection(),
        imageSection(),
        footerSection(),
        Divider(
          thickness: 1,
          color: Colors.grey[700],
        ),
        HeaderButtonSection(
          buttonOne: headerButton(
              buttonText: "Like",
              buttonIcon: Icons.thumb_up_alt_outlined,
              buttonAction: () {},
              buttonColor: Colors.grey),
          buttonTwo: headerButton(
              buttonText: "Comment",
              buttonIcon: Icons.message_outlined,
              buttonAction: (){},
              buttonColor: Colors.grey),
          buttonThree: headerButton(
              buttonText: "Share",
              buttonIcon: Icons.share,
              buttonAction: (){},
              buttonColor: Colors.grey),
        )
      ],
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration:
                    const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                child: const Icon(Icons.thumb_up, color: Colors.white, size: 10),
              ),
              const SizedBox(
                width: 4,
              ),
              displayText(label: likeCount),
            ],
          ),
          Row(
            children: [
              displayText(label: commentCount),
              const SizedBox(
                width: 4,
              ),
              displayText(label: "Comments"),
              const SizedBox(
                width: 12,
              ),
              displayText(label: shareCount),
              const SizedBox(
                width: 4,
              ),
              displayText(label: "Shares"),
              ProfilePics(
                displayImage: profPic,
                displayStatus: false,
                profHeight: 25,
                profWidth: 25,
              ),
              const SizedBox(
                width: 3,
              ),
              IconButton(
                  onPressed: () {
                    // print("Drop down pressed");
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  )),
            ],
          )
        ],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(imagePosted),
    );
  }

  Widget titleSection() {
    return captionPosted != null && captionPosted != "" ?
      Container(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(captionPosted == null ? "" : captionPosted,
          style: const TextStyle(color: Colors.black, fontSize: 16)),
    ) :
        const SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: ProfilePics(displayImage: profPic, displayStatus: false),
      title: Row(children: [
        Text(
          name,
          style: const TextStyle(color: Colors.black),
        ),
        const SizedBox(
          width: 10,
        ),
        showBlueTick ? const BlueTick() : const SizedBox()
      ]),
      subtitle: Row(
        children: [
          Text(timePosted == null ? "" : timePosted),
          const SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {
            // print("More menu");
          },
          icon: const Icon(Icons.more_horiz)),
    );
  }
}
