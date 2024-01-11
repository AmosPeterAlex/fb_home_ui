import 'package:fb_clone/assets.dart';
import 'package:fb_clone/sections/header_button_section.dart';
import 'package:fb_clone/sections/room_section.dart';
import 'package:fb_clone/sections/status_section.dart';
import 'package:fb_clone/sections/story_section.dart';
import 'package:fb_clone/sections/suggestion_section.dart';
import 'package:fb_clone/widgets/circular_button.dart';
import 'package:fb_clone/widgets/header_button.dart';
import 'package:fb_clone/widgets/post_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white54,
          elevation: 0,
          title: const Text(
            'facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  // print('Search Clicked');
                }),
            CircularButton(
                buttonIcon: Icons.messenger,
                buttonAction: () {
                  // print('Messages Open');
                })
          ],
        ),
        body: ListView(
          children: [
            const StatusSection(),
            thinDivider,
            HeaderButtonSection(
                buttonOne: headerButton(
                    buttonText: "Live",
                    buttonIcon: Icons.video_call,
                    buttonAction: () {},
                    buttonColor: Colors.red),
                buttonTwo: headerButton(
                    buttonText: "Photo",
                    buttonIcon: Icons.photo_library,
                    buttonAction: () {},
                    buttonColor: Colors.green),
                buttonThree: headerButton(
                    buttonText: "Room",
                    buttonIcon: Icons.video_call,
                    buttonAction: () {},
                    buttonColor: Colors.purple)),
            thickDivider,
            const RoomSection(),
            thickDivider,
            const StorySection(),
            thickDivider,
            PostCard(
              profPic: rincy,
              name: "Rincy Kevin",
              timePosted: '1h',
              captionPosted: 'Lodhi Art Street',
              imagePosted: rincyStory,
              likeCount: '480',
              commentCount: '28',
              shareCount: '2',
            ),
            thickDivider,
            PostCard(
              profPic: greeshma,
              name: "Greeshma Antony",
              timePosted: '2h',
              captionPosted: 'Hello guys...',
              imagePosted: greeshmaPost,
              likeCount: '494',
              commentCount: '19',
              shareCount: '3',
            ),
            thickDivider,
            PostCard(
              profPic: athulya,
              name: "Athulya Pushpan",
              timePosted: '4h',
              captionPosted: 'Us:>',
              imagePosted: athulyaPost,
              likeCount: '754',
              commentCount: '49',
              shareCount: '8',
            ),
            thickDivider,
            const SuggestionSection(),
            thickDivider,
            PostCard(
              profPic: adolf,
              name: "Adolf R",
              timePosted: '1h',
              captionPosted: 'Delhi',
              imagePosted: adolfPost,
              likeCount: '754',
              commentCount: '19',
              shareCount: '3',
            ),
            thickDivider,
            PostCard(
              profPic: nigil,
              name: " Nigil Gilbert",
              timePosted: '4h',
              captionPosted: '@TajMahal',
              imagePosted: nigilPost,
              likeCount: '200',
              commentCount: '9',
              shareCount: '2',
            ),
          ],
        ),
      ),
    );
  }
}
