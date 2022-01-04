import 'package:flutter/material.dart';
import 'package:tronclass_plus/main.dart';
import 'package:tronclass_plus/search_bar.dart';
import 'package:tronclass_plus/config.dart';

import 'package:shared_preferences/shared_preferences.dart';

class PageFront extends StatefulWidget {
  const PageFront({Key? key}) : super(key: key);

  @override
  _PageFrontState createState() => _PageFrontState();
}

class _PageFrontState extends State<PageFront> {
  String stu_name = userName_;
  String stu_no = userNo_;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(29,32,37,1),
      body:Container(
        padding: EdgeInsets.all(20.0),
        child:Column(
          children: [
            Container(
              decoration: new BoxDecoration(
                border: new Border.all(color:Color(0xFFF0000),width: 0.5),
                color:Color.fromRGBO(41,44,51,1),
                borderRadius:new BorderRadius.circular((20.0)),
              ),
              constraints: BoxConstraints(maxHeight: 50),
              child:
                  SearchField(context),
            ), //搜尋欄
            SizedBox(height: 15,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                  '哈囉!'+stu_name+'同學',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
              ),
            ), //系統招呼
            SizedBox(height: 15,),
            Container(
              height: 100,
              decoration: new BoxDecoration(
                border: new Border.all(color:Color(0xFFF0000),width: 0.5),
                color:Color.fromRGBO(41,44,51,1),
                borderRadius:new BorderRadius.circular((5.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    minWidth: 200,
                    height: 70,
                    child: Text('掃描',style: TextStyle(fontWeight: FontWeight.bold),),
                    color: Colors.blue,
                    splashColor: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  FlatButton(
                    minWidth: 200,
                    height: 70,
                    child: Text('簽到',style: TextStyle(fontWeight: FontWeight.bold)),
                    color: Colors.green,
                    splashColor: Colors.red,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                  ),
                ],
              ),

            ), //掃描 簽到按鈕
            SizedBox(height: 15,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '最近造訪',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ), //最近造訪
            SizedBox(height: 15,),
            Container(
              height: 200,
              width: double.maxFinite,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: new BoxDecoration(
                      border: new Border.all(color:Color(0xFFF0000),width: 0.5),
                      color:Color.fromRGBO(41,44,51,1),
                      borderRadius:new BorderRadius.circular((5.0)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 200,
                          child: Image(image:AssetImage('assets/images/lenny.png'),
                          ),
                        ),
                        Container(
                          height: 95,
                          width: 200,
                          child: Text(
                            '(1101_1025)線性代數\n\n\n'+'開課系級:資訊工程系',
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: new BoxDecoration(
                      border: new Border.all(color:Color(0xFFF0000),width: 0.5),
                      color:Color.fromRGBO(41,44,51,1),
                      borderRadius:new BorderRadius.circular((5.0)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 200,
                          child: Image(image:AssetImage('assets/images/lenny.png'),
                          ),
                        ),
                        Container(
                          height: 95,
                          width: 200,
                          child: Text(
                            '(1101_1042)大數據分析\n\n\n'+'開課系級:資訊工程系',
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                ],
              )
            ), //最近造訪 課程捷徑
            SizedBox(height: 15,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '待辦事項',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ), //待辦事項
            Container(
              height: 100,
              width: double.maxFinite,
              decoration: new BoxDecoration(
                border: new Border.all(color:Color(0xFFF0000),width: 0.5),
                color:Color.fromRGBO(41,44,51,1),
                borderRadius:new BorderRadius.circular((5.0)),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 50,
                    child: Text(
                      '期末專題上傳資料繳交處\n'+'課程名稱:(1101_1042)大數據分析',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 49,
                    child: Text(
                      '截止日期\n'+'2022-01-21 18:38',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )

      )
    );
  }
}
Widget SearchField(context){
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
    return TextField(
        decoration: InputDecoration(
          labelText: '輸入課程名稱或訪問碼',
          icon: Icon(Icons.search),
        ),
        textInputAction: TextInputAction.search,
        onSubmitted: (value) => searchDialog(context, value)
    );
}
Scan(){
  return null;
}
checkin(){
  return null;
}
