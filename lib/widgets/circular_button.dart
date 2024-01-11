import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  //const AppBarButton({super.key});
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;

  const CircularButton(
      {super.key,
      required this.buttonIcon,
      this.iconColor = Colors.black,
      required this.buttonAction});

  ///class ileyik pass cheydh kitunna parameters, should be immutable;
  ///immutable means should not change with time
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.42),
      decoration: const BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          color: iconColor, //lately saved
          size: 23,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
