import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Function() onPressed;
  final double? iconSize;
  final IconData? icon;
  final Color? color;
  const CircleButton({
    Key? key,
    required this.onPressed,
    this.iconSize,
    required this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: iconSize,
        ),
      ),
    );
  }
}
