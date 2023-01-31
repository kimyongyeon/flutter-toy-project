import 'package:flutter/material.dart';
import 'package:toy_project/pages/airbnb/component/home/home_body_popular.dart';
import 'package:toy_project/pages/airbnb/size.dart';

import 'home/home_body_banner.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    return Align(
      child: SizedBox(
        width: bodyWidth,
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
          ],
        ),
      ),
    );
  }
}
