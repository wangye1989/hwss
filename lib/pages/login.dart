import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("登录"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const TextField(
              maxLines: 1,
              decoration: InputDecoration(
                labelText: "手机号",
              ),
            ),
            TextButton(onPressed: () {}, child: const Text("发送验证码")),
            const SizedBox(
              height: 8,
            ),
            const TextField(
              maxLines: 1,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "验证码",
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {}, child: const Text("忘记密码？")),
                ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(12),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "bottom_nav_bar");
                    },
                    child: const Text("登录")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
