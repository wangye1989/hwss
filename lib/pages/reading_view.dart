import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReadingViewPage extends StatelessWidget {
  final String? title;
  const ReadingViewPage({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          // ignore: prefer_const_literals_to_create_immutables
          slivers: [
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle.light,
              backgroundColor: Colors.white,
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.chevron_left_rounded,
                      color: Colors.black)),
              title: Text(
                "$title",
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
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
                child: Row(
                  children: const [
                    Icon(
                      Icons.replay_rounded,
                      size: 20,
                      color: Colors.black87,
                    ),
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
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniEndFloat,
        floatingActionButton: FloatingActionButton(
          splashColor: Colors.black,
          child: const Icon(Icons.play_arrow_rounded),
          onPressed: () {},
        ));
  }
}
