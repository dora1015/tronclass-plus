import 'package:flutter/material.dart';
import 'package:tronclass_plus/main.dart';

import 'package:shared_preferences/shared_preferences.dart';

class PageFront extends StatefulWidget {
  const PageFront({Key? key}) : super(key: key);

  @override
  _PageFrontState createState() => _PageFrontState();
}

class _PageFrontState extends State<PageFront> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
      body:Container(
        padding: EdgeInsets.all(10.0),
        child:Column(
          children: [
            Container(
              child: Text(
                'cool'
              ),
            ),Container(
              child: Text(
                  'cool'
              ),
            )
          ],
        )

      )
    );
  }
}
