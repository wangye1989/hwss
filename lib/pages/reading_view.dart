import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/widgets.dart';

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
        bottomNavigationBar: bottomBarForReading(),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniEndFloat,
        floatingActionButton: FloatingActionButton(
          splashColor: Colors.black,
          child: const Icon(Icons.play_arrow_rounded),
          onPressed: () {},
        ));
  }
}
