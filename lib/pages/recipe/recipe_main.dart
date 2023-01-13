import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeMain extends StatefulWidget {
  const RecipeMain({Key? key}) : super(key: key);

  @override
  State<RecipeMain> createState() => _RecipeMainState();
}

class _RecipeMainState extends State<RecipeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "레시피",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        elevation: 0,
        actions: [
          IconButton(
            iconSize: 30,
            onPressed: () {
              print('search click!!!');
            },
            icon: Icon(
              CupertinoIcons.search,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 15),
          IconButton(
            iconSize: 30,
            onPressed: () {
              print('heart click!!!');
            },
            icon: Icon(
              CupertinoIcons.heart,
              color: Colors.redAccent,
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Recipes',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildMenuItem(Icons.food_bank, 'ALL'),
              _buildMenuItem(Icons.coffee, 'Coffee'),
              _buildMenuItem(Icons.bubble_chart, 'Burger'),
              _buildMenuItem(Icons.piano, 'Pizza'),
            ],
          ),
          _buildListItem("bag", "주저리주저리 "),
          _buildListItem("bag", "주저리주저리 "),
          _buildListItem("bag", "주저리주저리 "),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData mIcon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(mIcon),
          Text(text),
        ],
      ),
    );
  }

  Widget _buildListItem(String imageName, String title) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              // 이미지 모서리 곡선 추가
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: () {print('image button!!!');},
                child: Image.asset(
                  "assets/$imageName.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              print('title click!!!');
            },
            child: Text(
              imageName,
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
          ),
          // 이 폰트만 어떻게 키우지?
          TextButton(
            onPressed: () {
              print('detail click!!!');
            },
            child: Text(
              title,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
