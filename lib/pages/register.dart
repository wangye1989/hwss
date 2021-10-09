import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("注册"),
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
            ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(12),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("下一步")),
          ],
        ),
      ),
    );
  }
}
