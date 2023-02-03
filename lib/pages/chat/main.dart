import 'package:flutter/material.dart';
import 'package:toy_project/pages/chat/screens/main_screen.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.white,
          textTheme: TextTheme(
            headline6: TextStyle(color: Colors.black, fontSize: 24)
          ),
          iconTheme: IconThemeData(color: Colors.black)
        ),
      ),
      home: MainScreen(),
    );
  }
}
