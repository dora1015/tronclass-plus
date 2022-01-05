import 'package:flutter/material.dart';
import 'package:tronclass_plus/discuss_page/page1.dart';
import 'package:tronclass_plus/discuss_page/page2.dart';

class DynamicDis extends StatefulWidget {
  const DynamicDis({Key? key}) : super(key: key);

  @override
  State<DynamicDis> createState() => _DynamicDisState();
}

class _DynamicDisState extends State<DynamicDis> {
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
                    title: new Text('回覆收到評論'),
                    subtitle: new Text('你在文章 (文章名稱) 中的回覆已收到 (數字) 則評論'),
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
                    title: new Text('新文章'),
                    subtitle: new Text('(人) 在課程 (課程名稱) 中發布了新文章'),
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
                    title: new Text('新文章'),
                    subtitle: new Text('(人) 在課程 (課程名稱) 中發布了新文章'),
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
                    title: new Text('討論區開放'),
                    subtitle: new Text('課程 【(課程名稱)】的討論區 (討論區標題) 已於 (日期) 開放'),
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
