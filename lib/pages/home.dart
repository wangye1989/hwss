import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hwss/widgets/circle_button.dart';
import 'package:hwss/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  Todo:
        elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text(
          "资料库",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleButton(
            onPressed: () {},
            icon: Icons.add_circle,
            color: Colors.blue,
            iconSize: 32,
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          children: const [
            SizedBox(height: 12),
            SummaryCard(
              days: 4,
              hours: 18,
            ),
            BookCard(
              // cardTitle: '正在照看花草的孩子和祖父铜雕，西班牙科尔多瓦 (© David M G/Alamy)',
              bookName: "乔布斯在斯坦福的演讲",
              readingTime: "34",
            ),
          ],
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
