import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          '文章詳情',
          style: TextStyle(color: Colors.black),
        ),
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
      body: Scrollbar(
          child: ListView.builder(
        reverse: false,
        itemBuilder: (context, int) {
          return Column(
            children: [
              Text('作業問題', style: TextStyle(fontSize: 20.0)),
              Text('name', style: TextStyle(fontSize: 15.0)),
              Text('我是內容我是內容我是內容我是內容我是內容我是內容我是內容',
                  style: TextStyle(fontSize: 15.0)),
            ],
          );
        },
        itemCount: 1,
      )),
    );
  }
}
