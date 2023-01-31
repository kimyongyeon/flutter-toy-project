import 'package:flutter/material.dart';
import 'package:toy_project/pages/airbnb/component/home/home_body_popular_item.dart';

import '../../size.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: gap_m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPopularTitle(),
          _buildPopularList(),
        ],
      ),
    );
  }

  _buildPopularTitle() {
    return SizedBox();
  }

  _buildPopularList() {
    return Wrap(
      children: [
        HomeBodyPopularItem(id: 0),
        SizedBox(width: 7.5,),
        HomeBodyPopularItem(id: 0),
        SizedBox(width: 7.5,),
        HomeBodyPopularItem(id: 0),
        SizedBox(width: 7.5,),
      ],
    );
  }
}
