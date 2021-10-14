import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'circle_button.dart';

AppBar buildAppBar() {
  return AppBar(
    //  Todo:
    elevation: 0,
    backgroundColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    automaticallyImplyLeading: false,
    centerTitle: false,
    title: const Text(
      "资料库",
      style: TextStyle(color: Colors.black),
    ),
    actions: [
      CircleButton(
        onPressed: () {},
        icon: Icons.add_circle,
        color: Colors.blue,
        iconSize: 32,
      )
    ],
  );
}
