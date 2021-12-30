import 'package:flutter/material.dart';

class MineSettings extends StatefulWidget {
  const MineSettings({Key? key}) : super(key: key);

  @override
  State<MineSettings> createState() => _MineSettingsState();

}


class _MineSettingsState extends State<MineSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "设置",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onTap: () {
            // Navigator.pushNamed(context, '/mine');
            Navigator.pop(context);
          },
          // color: Colors.black,
        ),
      ),


    );
  }}