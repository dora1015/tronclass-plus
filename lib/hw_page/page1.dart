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
          '基本資訊',
          style: TextStyle(color: Colors.black),
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
                Text('title', style: TextStyle(fontSize: 30.0)),
                Text('作業類型',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                        backgroundColor: Colors.white12)),
                Text('成績比率', style: TextStyle(fontSize: 15.0)),
                Divider(),
                Text('公布成績時間', style: TextStyle(fontSize: 15.0)),
                Divider(),
                Text('開放時間', style: TextStyle(fontSize: 15.0)),
                Divider(),
                Text('繳交截止時間', style: TextStyle(fontSize: 15.0)),
                Divider(),
                Text('作業形式', style: TextStyle(fontSize: 15.0)),
                Divider(),Text('完成指標', style: TextStyle(fontSize: 15.0)),
                Text('評分方式',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                        backgroundColor: Colors.white12)),
                Divider(),
                Text('教師評閱', style: TextStyle(fontSize: 15.0)),
              ],
            );
          },
          itemCount: 1,
        )),
      ),
    );
  }
}
