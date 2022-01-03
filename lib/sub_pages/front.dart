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
              decoration: new BoxDecoration(
                border: new Border.all(color:Color(0xFFF0000),width: 0.5),
                color:Color(0xFF9E9E9E),
                borderRadius:new BorderRadius.circular((20.0)),
              ),
              //alignment: Alignment.topCenter,
              //color:Colors.grey[800],
              constraints: BoxConstraints(maxHeight: 50),
              child:
                  SearchField(context),
            ),
            Container(
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
Widget SearchField(context){
    return TextField(
        decoration: InputDecoration(
          labelText: '輸入課程名稱或訪問碼',
          icon: Icon(Icons.search),
        ),
        textInputAction: TextInputAction.search,
        onSubmitted: (value) => searchDialog(context, value)
    );
}
void searchDialog(context, value) {
  showDialog(
      context: context,
      builder: (_) => AlertDialog(
          title: Text("搜尋 $value"),
          content: Text("無搜尋結果"),
          actions: [
            FlatButton(
              child: Text("重新搜尋"),
              onPressed: () => Navigator.of(context).pop(),
            )
          ]
      )
  );
}