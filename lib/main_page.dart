import 'package:flutter/material.dart';
import 'sub_pages/mine.dart';
import 'sub_pages/front.dart';

class MainPage extends StatefulWidget {

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {

  int _currentIndex = 0;

  List tabs = [
    {
      'key': '首页',
    },
    {
      'key': '课程',
    },
    {
      'key': '課表',
    },
    {
      'key': '动态',
    },
    {
      'key': '我的',
    }
  ];

  var pages;

  @override
  Widget build(BuildContext context) {
    pages = [const PageFront(), Home(Colors.white70 , '2'),Home(Colors.teal , '3'),Home(Colors.amber, '4'),const PageMine()];
    return Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(

          selectedItemColor: Colors.teal,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: const Icon(IconData(0xe776, fontFamily: 'AppIconsRound')),
                title: Text(tabs[0]['key'])),
            BottomNavigationBarItem(
                icon: const Icon(IconData(0xe770, fontFamily: 'AppIconsRound')),
                title: Text(tabs[1]['key'])),
            BottomNavigationBarItem(
                icon: const Icon(IconData(0xe780, fontFamily: 'AppIconsRound')),
                title: Text(tabs[2]['key'])),
            BottomNavigationBarItem(
                icon: const Icon(IconData(0xe771, fontFamily: 'AppIconsRound')),
                title: Text(tabs[3]['key'])),
            BottomNavigationBarItem(
                icon: const Icon(IconData(0xe779, fontFamily: 'AppIconsRound')),
                title: Text(tabs[4]['key'])),
          ],


          type: BottomNavigationBarType.fixed,
          iconSize: 24,

          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },


        ));
  }

  Widget Home(Color bgcolor, String title) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(title),
      // ),
      body: Container(
        color: bgcolor,
      ),
    );
  }
}
