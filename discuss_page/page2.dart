import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
      body: Container(
        color: Colors.white,
        child: Scrollbar(
            child: ListView.builder(
          reverse: false,
          itemBuilder: (context, int) {
            return Column(
              children: [
                Text('title', style: TextStyle(fontSize: 20.0)),
                Text('name', style: TextStyle(fontSize: 15.0)),
                Text('我是內容我是內容我是內容我是內容我是內容我是內容我是內容',
                    style: TextStyle(fontSize: 15.0)),
              ],
            );
          },
          itemCount: 1,
        )),
      ),
    );
  }
}
