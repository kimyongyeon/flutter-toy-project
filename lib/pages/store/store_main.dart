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
        title: const Text('스토어 앱'),
        elevation: 0, // appbar 그림자 삭제
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea( // statusbar(상태바) 영역에 padding(여백) 넣어준다.
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'Women',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Kids',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Shoes',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Bag',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Image.asset(
                  "assets/bag.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Expanded(
                child: Image.asset(
                  "assets/cloth.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
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
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
