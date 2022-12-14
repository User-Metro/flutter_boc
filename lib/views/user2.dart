import 'package:flutter/material.dart';

class User2 extends StatelessWidget {
const User2({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
    title: const Text('Second Route'),
  ),
  body: Container(
  margin: const EdgeInsets.only(top: 50.0),
  child: Column(
    children: const [
      Text('Name user 2'),
      Text('Description 2'),
      Text('More info 2...')
    ],
  )));
}
}
