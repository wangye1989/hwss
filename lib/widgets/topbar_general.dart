import 'package:flutter/material.dart';

class GeneralAppBar extends StatelessWidget {
  final String titleText;
  final Function() onPressed;

  const GeneralAppBar(
      {Key? key, required this.titleText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left_rounded,
            color: Colors.black,
          ),
          onPressed: onPressed,
        ),
        title: Text(
          titleText,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
