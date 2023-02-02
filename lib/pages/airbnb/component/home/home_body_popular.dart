import 'package:flutter/material.dart';
import 'package:toy_project/pages/airbnb/component/home/home_body_popular_item.dart';

import '../../size.dart';
import '../../styles.dart';

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
    return Column(
      children: [
        Text("한국 숙소에 직접 다녀간 게스트의 후기 ", style: h5(),),
        Text("게스트 후기 2,500,000개 이상, 평균 평점 4.7점(5점만점)"),
        SizedBox(height: gap_m,)
      ],
    );
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
