import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MineAbout extends StatefulWidget {
  const MineAbout({Key? key}) : super(key: key);

  @override
  State<MineAbout> createState() => _MineAboutState();
}

class _MineAboutState extends State<MineAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "關於",
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
        color: Colors.white,
        child: SizedBox(
          height: 300,
          width: double.infinity,
          // color: Colors.blueGrey,
          // height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Container(
                margin: const EdgeInsets.only(top: 100),
                alignment: Alignment.center,
                height: 100,
                child: Image.asset(
                  "assets/images/tronclass-dark.png",
                  width: 150,
                ),
              ),

              const Text(
                "暢 課+",
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,

                ),
              ),

              const Text(
                "版本 21.12.30.1daa9",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,

                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}