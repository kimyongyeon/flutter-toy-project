import 'package:flutter/material.dart';

class MainIndex extends StatefulWidget {
  const MainIndex({Key? key}) : super(key: key);

  @override
  State<MainIndex> createState() => _MainIndexState();
}

class _MainIndexState extends State<MainIndex> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF42A5F5),
        border: Border.all(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 10,
        ),
      ),
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
