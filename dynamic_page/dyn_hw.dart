import 'package:flutter/material.dart';
import 'package:tronclass_plus/hw_page/page1.dart';
import 'package:tronclass_plus/hw_page/page2.dart';

class DynamicHW extends StatefulWidget {
  const DynamicHW({Key? key}) : super(key: key);

  @override
  State<DynamicHW> createState() => _DynamicHWState();
}

class _DynamicHWState extends State<DynamicHW> {
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
            Text('2021-11-25', style: TextStyle(fontSize: 15.0)),
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
                    title: new Text('作業即將截止'),
                    subtitle: new Text('課程【(課程名稱)】 的作業 (作業標題) 繳交即將於 (日期) 截止'),
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
                    title: new Text('作業開放繳交'),
                    subtitle: new Text('課程【(課程名稱)】 的作業 (作業標題) 已於 (日期) 開放繳交'),
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
