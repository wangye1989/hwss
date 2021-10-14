import 'package:flutter/material.dart';
import 'package:hwss/models/book.dart';
import '../widgets/widgets.dart';
import '../models/book.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: const SummaryCard(days: 4, hours: 23),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                itemCount: books.length,
                itemBuilder: (context, index) => BookCard(
                  book: books[index],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
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
