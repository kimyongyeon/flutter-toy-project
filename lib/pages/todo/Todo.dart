import 'package:flutter/material.dart';

class TodoMain extends StatefulWidget {
  const TodoMain({Key? key}) : super(key: key);

  @override
  State<TodoMain> createState() => _TodoMainState();
}

class _TodoMainState extends State<TodoMain> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputWidget(),
        SizedBox(
          // width: 500,
          // height: 100,
          child: ListView(
            shrinkWrap: true,
            children: const [
              ListTile(
                leading: Icon(Icons.flight),
                title: Text('Flight'),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text('Train'),
              ),ListTile(
                leading: Icon(Icons.train),
                title: Text('Train'),
              ),ListTile(
                leading: Icon(Icons.train),
                title: Text('Train'),
              ),ListTile(
                leading: Icon(Icons.train),
                title: Text('Train'),
              ),ListTile(
                leading: Icon(Icons.train),
                title: Text('Train'),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget InputWidget() => Center(
        child: Row(
          children: [
            const Flexible(
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Enter Todo',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(vertical: 40)),
                maxLength: 20,
                minLines: 1,
                style: TextStyle(fontSize: 15),
              ),
            ),
            TextButton(onPressed: () => {print('더하기')}, child: const Text('+'))
          ],
        ),
      );
}
