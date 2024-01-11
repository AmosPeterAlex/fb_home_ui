import 'package:fb_clone/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String profilePic;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;

  const SuggestionCard(
      {super.key,
      required this.profilePic,
      required this.name,
      required this.mutualFriends,
      required this.addFriend,
      required this.removeFriend});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(left: 10, right: 10),
      color: Colors.white,
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
          height: 140,
          color: Colors.grey[200],
          child: Column(
            children: [
              ListTile(
                title: Text(name != null ? name : ""),
                subtitle: Text(mutualFriends != null ? mutualFriends : ""),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconButton(
                        buttonAction: addFriend,
                        buttonIcon: Icons.add_moderator,
                        buttonColor: Colors.white,
                        buttonTextColor: Colors.black,
                        buttonIconColor: Colors.white,
                        buttonText: "Add friend"),
                    blankButton(
                        buttonAction: removeFriend,
                        buttonText: "Remove",
                        buttonColor: Colors.grey,
                        buttonTextColor: Colors.black)
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget blankButton({
    required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
  }) {
    return MaterialButton(
      textColor: buttonTextColor,
      onPressed: buttonAction,
      color: buttonColor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Text(buttonText, style: TextStyle(color: buttonTextColor)),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      child: ElevatedButton.icon(
        onPressed: buttonAction,
        icon: Icon(buttonIcon, color: buttonIconColor),
        label: Text(buttonText, style: TextStyle(color: buttonTextColor)),
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: profilePic != null
              ? Image.asset(
                  profilePic,
                  height: 250,
                  fit: BoxFit.cover,
                )
              : const SizedBox(),
        ));
  }
}
