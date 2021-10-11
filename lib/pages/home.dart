import 'package:flutter/material.dart';
import 'package:hwss/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  List wallPaperList = [];

  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text(
          "背后的故事",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Scrollbar(
        child: RefreshIndicator(
          onRefresh: _onRefresh,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: const [
              WallPaperCard(
                cardTitle:
                    '正在照看花草的孩子和祖父铜雕，西班牙科尔多瓦 (© David M G/Alamy)',
                imageUrl:
                    'https://cn.bing.com/th?id=OHR.CordovanCourts_ZH-CN8989880218_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp',
                timeStamp: '20200505',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _onRefresh() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        print('2');
      },
    );
  }
}
