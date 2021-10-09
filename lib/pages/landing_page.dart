import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
        // color: Colors.blue,
        // width: MediaQuery.of(context).size.width,
        width: double.infinity,
        // height: 600,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg_black_dog.jpeg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            const SizedBox(
              height: 500,
            ),
            const Text(
              "Data",
              style: TextStyle(
                  fontSize: 64,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.pink),
                ),
                child: const Text(
                  "登录",
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "login_page");
                },
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              width: double.infinity,
              child: TextButton(
                child: const Text(
                  "注册",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  // ignore: avoid_print
                  Navigator.pushNamed(context, "register_page");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
