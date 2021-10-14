import 'package:flutter/material.dart';

Widget bottomBarForReading() {
  return BottomAppBar(
    elevation: 0,
    color: Colors.white,
    shape: const CircularNotchedRectangle(),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        TextButton(
          child: Row(
            children: const [
              Icon(
                Icons.arrow_left_rounded,
                color: Colors.black87,
              ),
              Text(
                "上一句",
                style: TextStyle(color: Colors.black87),
              )
            ],
          ),
          onPressed: () {},
        ),
        TextButton(
          style: ButtonStyle(
            side: MaterialStateProperty.all(
              const BorderSide(
                color: Colors.black87,
                width: 0.5,
              ),
            ),
          ),
          child: Row(
            children: const [
              Text(
                "重复",
                style: TextStyle(color: Colors.black87),
              )
            ],
          ),
          onPressed: () {},
        ),
        TextButton(
          child: Row(
            children: const [
              Text(
                "下一句",
                style: TextStyle(color: Colors.black87),
              ),
              Icon(
                Icons.arrow_right_rounded,
                color: Colors.black87,
              ),
            ],
          ),
          onPressed: () {},
        ),
        const SizedBox(),
      ],
    ),
  );
}
