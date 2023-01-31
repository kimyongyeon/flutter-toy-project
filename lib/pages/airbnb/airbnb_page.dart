import 'package:flutter/material.dart';
import 'package:toy_project/pages/airbnb/component/home/home_header.dart';

import 'component/home_body.dart';

class AirbnbPage extends StatelessWidget {
  const AirbnbPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeHeader(),
          HomeBody(),
        ],
      ),
    );
  }
}
