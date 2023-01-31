import 'package:flutter/cupertino.dart';
import 'package:toy_project/pages/airbnb/component/home/home_header_appbar.dart';
import 'package:toy_project/pages/airbnb/component/home/home_header_form.dart';
import 'package:toy_project/pages/airbnb/size.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: header_height,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bag.jpeg"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            HomeHeaderAppbar(),
            HomeHeaderForm(),
          ],
        ),
      ),
    );
  }
}
