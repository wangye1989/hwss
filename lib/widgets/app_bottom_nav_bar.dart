import 'package:flutter/material.dart';

// --------------
// 定义一个 item
BottomNavigationBarItem _navItem(String title, Icon icon) {
  return BottomNavigationBarItem(icon: icon, label: title);
}

// 定义真正的底部导航组件
Widget bottomNavBar() {
  int _currentIndex = 0;
  return BottomNavigationBar(
    elevation: 0,
    backgroundColor: Colors.white,
    items: [
      _navItem("资料库", const Icon(Icons.book)),
      _navItem("生词", const Icon(Icons.text_format_rounded)),
    ],
    currentIndex: _currentIndex,
    onTap: (int index) {
      _currentIndex = index;
    },
  );
}
