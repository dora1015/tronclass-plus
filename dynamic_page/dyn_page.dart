import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dyn_announcement.dart';
import 'dyn_hw.dart';
import 'dyn_test.dart';
import 'dyn_discuss.dart';
import 'dyn_other.dart';

class DynamicPage extends StatefulWidget {
  const DynamicPage({Key? key}) : super(key: key);

  _DynamicPageState createState() => _DynamicPageState();
}

class _DynamicPageState extends State<DynamicPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              width: 350.0,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.black,
                indicatorColor: Colors.lightBlue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Text(
                    '公告',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '作業',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '測驗',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '討論',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '其他',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
          ),
          body: TabBarView(
            children: <Widget>[
              DynamicAnn(),
              DynamicHW(),
              DynamicTest(),
              DynamicDis(),
              DynamicOther()
            ],
          ),
        ),
      ),
    );
  }
}
