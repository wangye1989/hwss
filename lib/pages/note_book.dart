import 'package:flutter/material.dart';
import 'package:hwss/widgets/widgets.dart';

class NoteBookPage extends StatelessWidget {
  const NoteBookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: const Text(
            "生词本",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: const Center(
          child: Icon(
            Icons.notifications_active,
            size: 48,
          ),
        ));
  }
}
