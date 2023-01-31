import 'package:flutter/material.dart';

import '../../size.dart';

class HomeHeaderAppbar extends StatelessWidget {
  const HomeHeaderAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  _buildAppBarLogo() {
    return SizedBox();
  }

  _buildAppBarMenu() {
    return SizedBox();
  }
}
