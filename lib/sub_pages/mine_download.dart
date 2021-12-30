import 'package:flutter/material.dart';

class MineDownload extends StatefulWidget {
  const MineDownload({Key? key}) : super(key: key);

  @override
  State<MineDownload> createState() => _MineDownloadState();
}

class _MineDownloadState extends State<MineDownload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "文件",
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
        child: ListView(
          children: [
            Courseblock("(1101_1000)测试课程1", 2, 35.6),
            Courseblock("(1101_1001)测试课程2", 4, 12.5),


          ],
        ),

      ),

    );


  }

  Widget Courseblock(String name, int n, double size) {
    return Container(
      height: 100,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 5),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 120,
            margin: const EdgeInsets.only(left: 10,right: 10),
            decoration: BoxDecoration(
              
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(20),
            ),
            // child: ,
          ),

          Container(
            margin: const EdgeInsets.only(top: 15,bottom: 15),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    name,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text(
                    "$n个文件/$size",
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w300,


                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }


}