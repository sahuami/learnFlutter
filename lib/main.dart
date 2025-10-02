import 'package:flutter/material.dart';
import 'component/login_page.dart';
import 'component/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Login',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      initialRoute: '/login',
      routes: {
        '/login': (_) => AnimatedLoginPage(),
        '/home': (_) => HomePage(),
      },
    );
  }
}
