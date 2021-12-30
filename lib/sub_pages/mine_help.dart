import 'package:flutter/material.dart';

const String url = "https://tronclass.com/help";
class MineHelp extends StatefulWidget{
  const MineHelp({Key? key}) : super(key: key);

  @override
  State<MineHelp> createState() => _MineHelpState();
}

class _MineHelpState extends State<MineHelp> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage("assets/images/waiting.jpg")),

        ),
        child: Stack(
          children: [
            Container(
              height: 200,
              color: Colors.cyan,
              child: const Center(
                child: Text(
                  "帮助中心",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
            ),



          ],
        ),

      )
    );
  }
}

