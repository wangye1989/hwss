import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/login.dart';
import './pages/landing_page.dart';
import './pages/note_book.dart';
import './pages/mine.dart';
import './pages/register.dart';
import './widgets/botom_nav_bar.dart';
import './pages/reading_view.dart';

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
          brightness: Brightness.light,
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
        "reading_view_page": (context) => const ReadingViewPage(),
      },
      initialRoute: "home",
    );
  }
}
