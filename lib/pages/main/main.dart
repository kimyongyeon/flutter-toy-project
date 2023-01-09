import 'package:flutter/material.dart';

class MainIndex extends StatefulWidget {
  const MainIndex({Key? key}) : super(key: key);

  @override
  State<MainIndex> createState() => _MainIndexState();
}

class _MainIndexState extends State<MainIndex> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          Text('hello world'),
          Text('mainIndex'),
          Text('the end'),
        ],
      ),
    );
  }
}
