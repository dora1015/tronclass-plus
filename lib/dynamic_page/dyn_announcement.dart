import 'package:flutter/material.dart';
import 'package:tronclass_plus/announcement_page/page1.dart';
import 'package:tronclass_plus/announcement_page/page2.dart';
import 'package:tronclass_plus/announcement_page/page3.dart';
import 'package:tronclass_plus/announcement_page/page4.dart';
import 'package:tronclass_plus/announcement_page/page5.dart';
import 'package:tronclass_plus/announcement_page/page6.dart';
import 'package:tronclass_plus/announcement_page/page7.dart';

class DynamicAnn extends StatefulWidget {
  const DynamicAnn({Key? key}) : super(key: key);

  @override
  State<DynamicAnn> createState() => _DynamicAnnState();
}

class _DynamicAnnState extends State<DynamicAnn> {
  Future<void> smbs() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0))),
      builder: (context) {
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
                    Text('取消', style: TextStyle(fontSize: 20.0))
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
            Text('2021-12-05', style: TextStyle(fontSize: 15.0)),
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
                    title: new Text('公告更新'),
                    subtitle: new Text('課程【(課程名稱)】 更新公告 (公告標題)'),
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
                    title: new Text('公告發布'),
                    subtitle: new Text('課程【(課程名稱)】 發布公告 (公告標題)'),
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
                    title: new Text('公告更新'),
                    subtitle: new Text('課程【(課程名稱)】 更新公告 (公告標題)'),
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
                    title: new Text('公告發布'),
                    subtitle: new Text('課程【(課程名稱)】 發布公告 (公告標題)'),
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
                    title: new Text('公告更新'),
                    subtitle: new Text('課程【(1092_1234)A課程】 更新公告 (公告標題)'),
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
                    title: new Text('公告發布'),
                    subtitle: new Text('課程【(課程名稱)】 發布公告 (公告標題)'),
                  ),
                ),
              ),
            ),
            Text('2021-05-03', style: TextStyle(fontSize: 15.0)),
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
                    title: new Text('公告發布'),
                    subtitle: new Text('課程【(1092_1234)A課程】 發布公告 (公告標題)'),
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
                    title: new Text('公告發布'),
                    subtitle: new Text('課程【(課程名稱)】 發布公告 (公告標題)'),
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
