import 'package:flutter/material.dart';
import 'package:tronclass_plus/main.dart';


class PageMine extends StatefulWidget {
  const PageMine({Key? key}) : super(key: key);

  @override
  State<PageMine> createState() => _PageMineState();
}

class _PageMineState extends State<PageMine> {
  String stu_name = '張三';
  String stu_no = 's08350000@thu.edu.tw';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
      // ),
      body: Container(
        // color: Colors.white,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(32, 170, 210, 1),
          Color.fromRGBO(18, 195, 180, 1),
        ])),
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                // color: Colors.teal,
                // width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 250,
                        margin: const EdgeInsets.only(left: 20.0),
                        // color: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 250,
                              child: Text(
                                stu_name,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: Text(
                                stu_no,
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        )),
                    const Expanded(child: SizedBox()),
                    GestureDetector(
                      child: Container(
                        // color: Colors.black,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        margin: const EdgeInsets.only(right: 20.0),
                        // padding: const EdgeInsets.all(0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'assets/images/head.jpg',
                            fit: BoxFit.cover,
                            scale: 2,
                          ),
                        ),
                      ),
                      onTap: () {
                        print("account");
                      },

                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ClipRRect(
                  // decoration: const BoxDecoration(
                  //   color: Colors.grey,
                  //   borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(20.0),
                  //     topRight: Radius.circular(20.0),
                  //   ),
                  //
                  // ),

                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  child: Container(
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        // const SizedBox(height: 10,),
                        ListTab(
                            const Icon(
                                IconData(0xe679, fontFamily: 'AppIconsUI')),
                            '个人资料库',
                            "/mine/database"),
                        ListTab(
                            const Icon(
                                IconData(0xe673, fontFamily: 'AppIconsUI')),
                            '下載管理',
                            "/mine/download"),
                        const SizedBox(
                          height: 8,
                        ),
                        ListTab(
                            const Icon(
                                IconData(0xe66e, fontFamily: 'AppIconsUI')),
                            '反饋',
                            "/mine/feedback"),
                        ListTab(const Icon(Icons.help), '幫助中心', "/mine/help"),
                        ListTab(
                            const Icon(
                                IconData(0xe691, fontFamily: 'AppIconsUI')),
                            '設置',
                            "/mine/settings"),
                        ListTab(const Icon(Icons.warning_amber_outlined), '關於',
                            "/mine/about"),
                        const SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            color: Colors.white,
                            child: const Center(
                              child: Text(
                                '登出',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            print("log out");
                          },
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget ListTab(Icon icon, String name, String source) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: 50,
        color: Colors.white,
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            icon,
            const SizedBox(
              width: 15,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            const Expanded(child: SizedBox()),
            const Icon(Icons.keyboard_arrow_right_sharp),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
      onTap: () {
        print(source);
        setState(() {
          Navigator.pushNamed(context, source);
        });
      },
    );
  }
}
