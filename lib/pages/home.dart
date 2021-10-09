import 'package:flutter/material.dart';
import 'package:hwss/widgets/b_nav_bar.dart';
import 'package:hwss/widgets/botom_nav_bar.dart';

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
      body: Center(
        child: ElevatedButton(
          child: const Text("退出"),
          onPressed: () {
            Navigator.pushNamed(context, "landing_page");
          },
        ),
      ),
      // bottomNavigationBar: CBottomNavBar(),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
