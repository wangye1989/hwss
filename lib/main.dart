import 'package:flutter/material.dart';
import 'package:hwss/pages/home.dart';
import 'package:hwss/pages/login.dart';
import 'package:hwss/pages/landing_page.dart';
import 'package:hwss/pages/note_book.dart';
import 'package:hwss/pages/mine.dart';
import 'package:hwss/pages/register.dart';
import 'package:hwss/widgets/botom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[100],
          primaryColor: Colors.green),
      routes: {
        "landing_page": (context) => const LandingPage(),
        "login_page": (context) => const LoginPage(),
        "register_page": (context) => const RegisterPage(),
        "home": (context) => HomePage(),
        "bottom_nav_bar": (context) => CBottomNavBar(),
        "message_page": (context) => const NoteBookPage(),
        "mine_page": (context) => const MinePage(),
      },
      initialRoute: "bottom_nav_bar",
    );
  }
}
