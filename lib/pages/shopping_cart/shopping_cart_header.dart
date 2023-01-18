import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toy_project/material.dart';

class ShoppingCartHeader extends StatefulWidget {
  const ShoppingCartHeader({Key? key}) : super(key: key);

  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  int selectedId = 0;
  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [_buildheaderPic(context), _buildHeaderSelector(context)],
      ),
    );
  }

  Widget _buildheaderPic(BuildContext context) =>
      Padding(
        padding: EdgeInsets.all(16.0),
        child: AspectRatio(
          aspectRatio: 5 / 3,
          child: Image.asset(
            selectedPic[selectedId],
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget _buildHeaderSelector(BuildContext context) =>
      Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildHeaderSelectorButton(0, Icons.directions_bike),
            _buildHeaderSelectorButton(1, Icons.motorcycle),
            _buildHeaderSelectorButton(2, CupertinoIcons.car_detailed),
            _buildHeaderSelectorButton(3, CupertinoIcons.airplane),
          ],
        ),
      );

  _buildHeaderSelectorButton(int id, IconData mIcon) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: id == selectedId ? kAccentColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        icon: Icon(mIcon, color: Colors.black),
        onPressed: () {
          setState(() {
            selectedId = id;
          });
        },
      ),
    );
  }
}
