import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'main_page.dart';

import 'sub_pages/mine.dart';
import 'sub_pages/mine_about.dart';
import 'sub_pages/mine_database.dart';
import 'sub_pages/mine_download.dart';
import 'sub_pages/mine_help.dart';
import 'sub_pages/mine_feedback.dart';
import 'sub_pages/mine_settings.dart';
import 'main_page.dart';

import 'package:shared_preferences/shared_preferences.dart';



void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    initialRoute: '/',
    routes: {
      '/': (context) {
        return MyApp();
      },
      '/main': (context) {
        return MainPage();
      },
      '/mine': (context) {
        return PageMine();
      },
      '/mine/database': (context) {
        return MineDB();
      },
      '/mine/download': (context) {
        return MineDownload();
      },
      '/mine/feedback': (context) {
        return MineFeedback();
      },
      '/mine/help': (context) {
        return MineHelp();
      },
      '/mine/settings': (context) {
        return MineSettings();
      },
      '/mine/about': (context) {
        return MineAbout();
      },

      // 'Card01':(context){return const card_01();},
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _setDefaultData() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    // 设置账户
    pref.setString('userName', "張三");
    pref.setString('userNo', "s08350000@thu.edu.tw");
    // 默认配置
    pref.setString('perform', "system");
    pref.setString('language', "system");
    pref.setString('fontSize', "standard");
    // pref.setString('motivation', "system");

    print("insert data ~");
  }

  final String launchImage =
      "assets/images/tronclass.png";

  int _countdown = 3;
  late Timer _countdownTimer;

  @override
  void initState() {
    super.initState();
    _startRecordTime();
    _setDefaultData();
    print('initialize');
  }

  @override
  void dispose() {
    super.dispose();
    print('start page end');
    if (_countdownTimer.isActive) {
      _countdownTimer.cancel();
      // _countdownTimer = null;
    }
  }

  void _startRecordTime() {
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_countdown <= 1) {
//          Navigator.of(context).pushNamed("/demo1");
          Navigator.of(context).pop();
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return MainPage();
          }));
          _countdownTimer.cancel();
          // _countdownTimer = null;
        } else {
          _countdown -= 1;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              color: Colors.teal,
              child: Image.asset(launchImage,scale: 8,),
              // child: const FlutterLogo(),

            ),



            Positioned(
              top: 30,
              right: 30,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    // Navigator.of(context).pushNamed('/main');
                    _countdown = 0;
                  });

                },
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black12,
                  ),
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: '$_countdown',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      const TextSpan(
                          text: ' Skip',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                    ]),
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
