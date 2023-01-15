import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toy_project/components/custom_form.dart';
import 'package:toy_project/components/logo.dart';

import '../../size.dart';

class LoginMain extends StatefulWidget {
  const LoginMain({Key? key}) : super(key: key);

  @override
  State<LoginMain> createState() => _LoginMainState();
}

class _LoginMainState extends State<LoginMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(
              height: xlarge_gap,
            ),
            Logo(
              title: '로그인',
            ),
            SizedBox(height: large_gap,),
            CustomForm(),
          ],
        ),
      ),
    );
  }
}
