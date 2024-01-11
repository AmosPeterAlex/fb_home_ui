import 'package:fb_clone/assets.dart';
import 'package:fb_clone/widgets/suggestion_card.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: const Text("People You may know"),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
                color: Colors.grey[700]),
          ),
          SizedBox(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  profilePic: me,
                  name: "Amos P Alex",
                  mutualFriends: '200 mutual friend',
                  addFriend: () {
                    // print("Add friend");
                  },
                  removeFriend: () {
                    // print("remove from list");
                  },
                ),
                SuggestionCard(
                  profilePic: sajin,
                  name: "Sajin Duglas",
                  mutualFriends: '542 mutual friend',
                  addFriend: () {
                    // print("Add friend");
                  },
                  removeFriend: () {
                    // print("remove from list");
                  },
                ),
                SuggestionCard(
                  profilePic: me,
                  name: "Amos ",
                  mutualFriends: '142 mutual friend',
                  addFriend: () {
                    // print("Add friend");
                  },
                  removeFriend: () {
                    // print("remove from list");
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
