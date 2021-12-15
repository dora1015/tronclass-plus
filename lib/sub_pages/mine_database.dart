import 'package:flutter/material.dart';

class MineDB extends StatefulWidget {
  const MineDB({Key? key}) : super(key: key);

  @override
  State<MineDB> createState() => _MineDBState();

}

class _MineDBState extends State<MineDB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("a"),
      ),
      body: Container(
        color: Colors.black,
      ),
    );
  }}