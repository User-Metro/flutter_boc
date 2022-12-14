import 'package:flutter/material.dart';

class User1 extends StatelessWidget {
const User1({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Frist Route'),
    ),
    body: Container(
      margin: const EdgeInsets.only(top: 50.0),
      child: Column(
        children: const [
          Text('Name user'),
          Text('Description'),
          Text('More info...')
        ],
      )
    )
  );
}
}
