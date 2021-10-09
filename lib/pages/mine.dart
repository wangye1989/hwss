import 'package:flutter/material.dart';
import 'package:hwss/widgets/widgets.dart';

class MinePage extends StatelessWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text(
          "我",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("退出"),
          onPressed: () {
            Navigator.pushNamed(context, "landing_page");
          },
        ),
      ),
    );
  }
}
