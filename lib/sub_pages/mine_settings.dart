import 'package:flutter/material.dart';

class MineSettings extends StatefulWidget {
  const MineSettings({Key? key}) : super(key: key);

  @override
  State<MineSettings> createState() => _MineSettingsState();

}


class _MineSettingsState extends State<MineSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "设置",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onTap: () {
            // Navigator.pushNamed(context, '/mine');
            Navigator.pop(context);
          },
          // color: Colors.black,
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [

            SelectBlank(
                (()=>{}),
              "外观",
              "跟随系统",

            ),

            SelectBlank(
              (()=>{}),
              "多语言",
              "跟随系统",

            ),

            SelectBlank(
              (()=>{}),
              "字体大小",
              "标准",

            ),

            Divider(height: 5,),

            SelectBlank(
              (()=>{}),
              "动态推送",
              "去设置",

            ),



          ],
        ),
      ),

    );
  }

  Widget SelectBlank(issue, String title, String select) {
    return GestureDetector(
      onTap: issue,
      child: Container(
        height: 50,
        // width: double.infinity,
        margin: const EdgeInsets.only(top: 3),
        padding: const EdgeInsets.only(left: 20, right: 20),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,

              ),
            ),
            
            Expanded(child: Container(),),
            
            Text(
              select + "     ",
              style: const TextStyle(
                color: Colors.blueGrey,
                fontSize: 16,

              ),
            ),

            const Icon(Icons.arrow_forward_ios, size: 16,),


          ],
        ),
      ),
    );
  }

}