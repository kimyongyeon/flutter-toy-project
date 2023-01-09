import 'package:flutter/cupertino.dart';
import 'package:toy_project/widgets/loginInput.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          LoginInput(userId: 'id',),
          LoginInput(userId: 'password',)
        ],
      ),
    );
  }
}
