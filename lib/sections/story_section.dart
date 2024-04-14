import 'package:fb_clone/assets.dart';
import 'package:fb_clone/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to story",
            profilePics: me,
            story: me,
            createstoryStatus: false,
          ),
          StoryCard(
              labelText: "Jenifer George", story: jeniStory, profilePics: jeni),
          StoryCard(
              labelText: "Rincy Kevin", story: rincyPost, profilePics: rincy),
          StoryCard(
              labelText: "Prasanth Sabu",
              story: prasanthStory,
              profilePics: prasanth),
          StoryCard(
              labelText: "Greeshma Antony",
              story: greeshmaStory,
              profilePics: greeshma),
          // StoryCard(labelText: "Sajin Duglas", story: sajinStory, profilePics: sajinStory),
          StoryCard(
              labelText: "Athulya Pushpan",
              story: athulyaStory,
              profilePics: athulya),
          StoryCard(
              labelText: "Adolf Antony", story: adolfStory, profilePics: adolf),
          StoryCard(
              labelText: "Nigil Gilbert", story: nigilStory, profilePics: nigil)
        ],
      ),
    );
  }
}
