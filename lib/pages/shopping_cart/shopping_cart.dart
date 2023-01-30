import 'package:flutter/material.dart';
import 'package:toy_project/pages/shopping_cart/shopping_cart_detail.dart';
import 'package:toy_project/pages/shopping_cart/shopping_cart_header.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(context),
      body: Container(
        child: Column(
          children: [
            ShoppingCartHeader(),
            sectionContainer(context),
            ShoppingCartDetail(),
          ],
        ),
      ),
    );
  }

  AppBar _buildShoppingCartAppBar(BuildContext context) => AppBar(
    leading:  InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        alignment: Alignment.center,
        // 컨테이너 내부 Text 위젯 정렬시 사용
        width: 150,
        height: 45,
        child: const Icon(Icons.chevron_left),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      ),
    ),
    actions: [
      IconButton(
        iconSize: 30,
        onPressed: () {
          print('search click!!!');
        },
        icon: const Icon(
          Icons.shopping_cart,
          color: Colors.black,
        ),
      ),
    ],
    elevation: 0.0,
  );



  Widget sectionContainer(BuildContext context) => SizedBox(height: 1.0,);



}
