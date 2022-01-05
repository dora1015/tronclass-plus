import 'package:flutter/material.dart';
import 'package:tronclass_plus/test_page/page1.dart';
import 'package:tronclass_plus/test_page/page2.dart';
import 'package:tronclass_plus/test_page/page3.dart';
import 'package:tronclass_plus/test_page/page4.dart';
import 'package:tronclass_plus/test_page/page5.dart';
import 'package:tronclass_plus/test_page/page6.dart';
import 'package:tronclass_plus/test_page/page7.dart';

class DynamicTest extends StatefulWidget {
  const DynamicTest({Key? key}) : super(key: key);

  @override
  State<DynamicTest> createState() => _DynamicTestState();
}

class _DynamicTestState extends State<DynamicTest> {
  Future<void> smbs() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0))),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            height: 75.0,
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, int) {
                return Column(
                  children: [
                    Text('置頂', style: TextStyle(fontSize: 20.0)),
                    Divider(),
                    Text('取消', style: TextStyle(fontSize: 20.0)),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scrollbar(
            child: ListView.builder(
      reverse: false,
      itemBuilder: (context, int) {
        return Center(
            child: Column(
          children: [
            Text('', style: TextStyle(fontSize: 5.0)),
            Text('2021-11-29', style: TextStyle(fontSize: 15.0)),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: InkWell(
                  splashColor: Colors.white.withAlpha(20),
                  onTap: () {
                    debugPrint('pressed');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page1()));
                  },
                  child: new ListTile(
                    trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        iconSize: 20.0,
                        onPressed: () {
                          print('pressed');
                          smbs();
                        }),
                    title: new Text('測驗開放繳交'),
                    subtitle: new Text(
                        '課程【(課程名稱)】 的測驗 (測驗標題) 已於2021-11-29 15:38:56 開放繳交'),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: InkWell(
                  splashColor: Colors.white.withAlpha(20),
                  onTap: () {
                    debugPrint('pressed');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page2()));
                  },
                  child: new ListTile(
                    trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        iconSize: 20.0,
                        onPressed: () {
                          print('pressed');
                          smbs();
                        }),
                    title: new Text('測驗開放繳交'),
                    subtitle: new Text(
                        '課程【(課程名稱)】 的測驗 (測驗標題) 已於2021-11-29 09:56:00 開放繳交'),
                  ),
                ),
              ),
            ),
            Text('2021-11-25', style: TextStyle(fontSize: 15.0)),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: InkWell(
                  splashColor: Colors.white.withAlpha(20),
                  onTap: () {
                    debugPrint('pressed');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page3()));
                  },
                  child: new ListTile(
                    trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        iconSize: 20.0,
                        onPressed: () {
                          print('pressed');
                          smbs();
                        }),
                    title: new Text('測驗開放繳交'),
                    subtitle: new Text(
                        '課程【(課程名稱)】 的測驗 (測驗標題) 已於2021-11-25 10:20:00 開放繳交'),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: InkWell(
                  splashColor: Colors.white.withAlpha(20),
                  onTap: () {
                    debugPrint('pressed');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page4()));
                  },
                  child: new ListTile(
                    trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        iconSize: 20.0,
                        onPressed: () {
                          print('pressed');
                          smbs();
                        }),
                    title: new Text('測驗即將截止'),
                    subtitle: new Text(
                        '課程【(課程名稱)b】 的測驗 (測驗標題) 即將於2021-11-25 23:59:00 截止'),
                  ),
                ),
              ),
            ),
            Text('2021-05-25', style: TextStyle(fontSize: 15.0)),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: InkWell(
                  splashColor: Colors.white.withAlpha(20),
                  onTap: () {
                    debugPrint('pressed');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page5()));
                  },
                  child: new ListTile(
                    trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        iconSize: 20.0,
                        onPressed: () {
                          print('pressed');
                          smbs();
                        }),
                    title: new Text('測驗成績更新'),
                    subtitle: new Text(
                        '你在課程【(1092_1234)A課程】 的測驗 (測驗標題) 獲得了100.0分的成績'),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: InkWell(
                  splashColor: Colors.white.withAlpha(20),
                  onTap: () {
                    debugPrint('pressed');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page6()));
                  },
                  child: new ListTile(
                    trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        iconSize: 20.0,
                        onPressed: () {
                          print('pressed');
                          smbs();
                        }),
                    title: new Text('測驗開放繳交'),
                    subtitle: new Text(
                        '課程【(課程名稱)】 的測驗 (測驗標題) 已於2021-05-25 09:50:00 開放繳交'),
                  ),
                ),
              ),
            ),
            Text('2021-04-30', style: TextStyle(fontSize: 15.0)),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: InkWell(
                  splashColor: Colors.white.withAlpha(20),
                  onTap: () {
                    debugPrint('pressed');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page5()));
                  },
                  child: new ListTile(
                    trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        iconSize: 20.0,
                        onPressed: () {
                          print('pressed');
                          smbs();
                        }),
                    title: new Text('測驗即將截止'),
                    subtitle: new Text(
                        '課程【(1092_1234)A課程】 的測驗 (測驗標題) 即將於2021-05-02 23:59:00 截止'),
                  ),
                ),
              ),
            ),
            Text('2021-04-04', style: TextStyle(fontSize: 15.0)),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: InkWell(
                  splashColor: Colors.white.withAlpha(20),
                  onTap: () {
                    debugPrint('pressed');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page7()));
                  },
                  child: new ListTile(
                    trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        iconSize: 20.0,
                        onPressed: () {
                          print('pressed');
                          smbs();
                        }),
                    title: new Text('測驗開放繳交'),
                    subtitle: new Text(
                        '課程【(課程名稱)b】 的測驗 (測驗標題) 已於2021-04-04 15:20:00 開放繳交'),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: InkWell(
                  splashColor: Colors.white.withAlpha(20),
                  onTap: () {
                    debugPrint('pressed');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page5()));
                  },
                  child: new ListTile(
                    trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        iconSize: 20.0,
                        onPressed: () {
                          print('pressed');
                          smbs();
                        }),
                    title: new Text('測驗開放繳交'),
                    subtitle: new Text(
                        '課程【(1092_1234)A課程】  的測驗 (測驗標題) 已於2021-04-04 00:00:00 開放繳交'),
                  ),
                ),
              ),
            ),
            Text('2021-04-03', style: TextStyle(fontSize: 15.0)),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: InkWell(
                  splashColor: Colors.white.withAlpha(20),
                  onTap: () {
                    debugPrint('pressed');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page5()));
                  },
                  child: new ListTile(
                    trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        iconSize: 20.0,
                        onPressed: () {
                          print('pressed');
                          smbs();
                        }),
                    title: new Text('測驗即將開放答題'),
                    subtitle: new Text(
                        '課程【(1092_1234)A課程】 的測試 (測驗標題) 將於2021-04-04 00:00:00 開放繳交'),
                  ),
                ),
              ),
            ),
          ],
        ));
      },
      itemCount: 1,
    )));
  }
}
