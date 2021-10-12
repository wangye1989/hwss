import 'package:flutter/material.dart';
import 'package:hwss/pages/home.dart';
import 'package:hwss/pages/note_book.dart';
// import 'package:hwss/pages/mine.dart';

class CBottomNavBar extends StatefulWidget {
  List widgets = [
    HomePage(),
    const NoteBookPage(),
  ];

  CBottomNavBar({Key? key}) : super(key: key);

  @override
  _CBottomNavBarState createState() => _CBottomNavBarState();
}

class _CBottomNavBarState extends State<CBottomNavBar> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.book), label: "资料库"),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_format_rounded), label: "生词"),
        ],
        currentIndex: _index,
        onTap: (v) {
          setState(() {
            _index = v;
          });
        },
      ),
      body: widget.widgets[_index],
    );
  }
}
