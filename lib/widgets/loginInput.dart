import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {

  final String userId;

  const LoginInput({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print(userId);

    return Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: userId,
            ),
          ),
        )
    );
  }
}
