import 'package:flutter/material.dart';
import 'package:hwss/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text(
          "首页",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Center(
        child: Icon(
          Icons.accessibility_new_outlined,
          size: 48,
        ),
      ),
    );
  }
}
