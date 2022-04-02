import 'package:flutter/material.dart';
import 'package:session_5/layout/screens/messenger_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xff075e54),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff075e54),
        ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xff128c7e)),
      ),
      home: const MessangerUI(),
    );
  }
}
