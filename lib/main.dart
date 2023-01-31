import 'package:flutter/material.dart';
import 'package:toy_project/pages/airbnb/airbnb_page.dart';
import 'package:toy_project/pages/home.dart';
import 'package:toy_project/pages/login/login_main.dart';
import 'package:toy_project/pages/shopping_cart/shopping_cart.dart';
import 'package:toy_project/pages/todo/Todo.dart';
import 'package:toy_project/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buttonTheme(),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginMain(),
        '/home': (context) => HomePage(),
        '/shopping_cart': (context) => ShoppingCart(),
        '/airbnb': (context) => AirbnbPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Align(
        alignment: AlignmentDirectional.topCenter,
        child: Container(
          decoration: BoxDecoration(
            // color: Color(0xFF42A5F5),
            border: Border.all(
              color: Colors.lightBlueAccent,
              style: BorderStyle.solid,
              width: 10,
            ),
          ),
          height: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[TodoMain()],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
