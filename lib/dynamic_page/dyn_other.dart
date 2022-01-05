import 'package:flutter/material.dart';
import 'package:tronclass_plus/other_page/page1.dart';
import 'package:tronclass_plus/other_page/page2.dart';
import 'package:tronclass_plus/other_page/page3.dart';

class DynamicOther extends StatefulWidget {
  const DynamicOther({Key? key}) : super(key: key);

  @override
  State<DynamicOther> createState() => _DynamicOtherState();
}

class _DynamicOtherState extends State<DynamicOther> {
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
                    title: new Text('學習活動開放'),
                    subtitle: new Text(
                        '課程【(課程名稱)】 的影音教材 (標題) 已於2021-11-25 18:46:10 開放'),
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
                    title: new Text('學習活動開放'),
                    subtitle: new Text(
                        '課程【(課程名稱)】 的影音教材 (標題) 已於2021-11-29 18:35:10 開放'),
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
                    title: new Text('學習活動即將截止'),
                    subtitle: new Text(
                        '課程【(課程名稱)b】 的影音教材 (標題) 即將於2021-11-28 232:59:00 截止'),
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
                    title: new Text('學習活動開放'),
                    subtitle: new Text(
                        '課程【(課程名稱)b】 的影音教材 (標題) 已於2021-11-25 18:50:10 開放'),
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
                    title: new Text('學習活動即將截止'),
                    subtitle: new Text(
                        '你在課程【(1092_1234)A課程】 的影音教材 (標題) 已於2021-04-30 09:59:00 開放'),
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
                    title: new Text('學習活動開放'),
                    subtitle: new Text(
                        '課程【(課程名稱)】 的Teams直播 (標題) 已於2021-05-25 09:00:10 開放'),
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
                    title: new Text('學習活動開放'),
                    subtitle: new Text(
                        '課程【(1092_1234)A課程】 的影音教材 (標題) 已於2021-04-30 09:59:00 開放'),
                  ),
                ),
              ),
            ),
            Text('2021-02-04', style: TextStyle(fontSize: 15.0)),
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
                    title: new Text('課程即將開始'),
                    subtitle: new Text('課程【(課程名稱)b】 即將於 2021-02-07 開始'),
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
                    title: new Text('課程即將開始'),
                    subtitle: new Text('課程【(課程名稱)】  即將於 2021-02-07 開始'),
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
                    title: new Text('課程即將開始'),
                    subtitle: new Text('課程【(1092_1234)A課程】 即將於 2021-02-07 開始'),
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
