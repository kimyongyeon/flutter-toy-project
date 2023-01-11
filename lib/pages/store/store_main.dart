import 'package:flutter/material.dart';

class StoreMain extends StatefulWidget {
  const StoreMain({Key? key}) : super(key: key);

  @override
  State<StoreMain> createState() => _StoreMainState();
}

class _StoreMainState extends State<StoreMain> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('스토어 앱'),
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Women'),
                Text('Kids'),
                Text('Shoes'),
                Text('Bag'),
              ],
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.lightBlueAccent,
                child: Text('1111'),
              ),
            ),
            Expanded(
              flex: 1,
                child: Text('Image View')),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet), label: '나의 판매글'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: '마이페이지'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightGreen,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
