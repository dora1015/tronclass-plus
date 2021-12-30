import 'package:flutter/material.dart';
import 'package:tronclass_plus/search_bar.dart';
import 'package:tronclass_plus/mysql.dart';


class MineDB extends StatefulWidget {
  const MineDB({Key? key}) : super(key: key);

  @override
  State<MineDB> createState() => _MineDBState();
}


class _MineDBState extends State<MineDB> {
  var _index = 0;
  var _UporDown = false;
  Future _showCustomModalBottomSheet(context, List<String> options) async {
    return showModalBottomSheet<int> (
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          height: 300,
          child: Column(children: [
            SizedBox(
              height: 50,
              child: Stack(
                textDirection: TextDirection.rtl,
                children: [
                  const Center(
                    child: Text(
                      '底部弹窗',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {

                        Navigator.of(context).pop();
                      }),
                ],
              ),
            ),
            const Divider(height: 1.0),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      title: Center(child: Text(options[index]),),
                      onTap: () {

                        if(_index == index){
                          setState(() {
                            _UporDown = !_UporDown;
                          });
                        }else{
                          setState(() {
                            _index = index;
                          });
                        }
                        Navigator.of(context).pop(index);
                      });
                },
                itemCount: options.length,
              ),
            ),
          ]),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {

    List<String> selectList = [
      '资源名称',
      '上传时间',
      '资源大小',
      '关联数量',
    ];
    var _screenSize = MediaQuery.of(context).size;

    // sql();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "资源库",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
          onTap: () {

            // Navigator.pushNamed(context, '/mine');
            Navigator.pop(context);
          },
          // color: Colors.black,
        ),


      ),

      // centerTitle: true,
      body: Container(
        alignment: Alignment.center,
        // color: Colors.teal[300],
        decoration: const BoxDecoration(
          color: Color(0x00ffffff),
            image: DecorationImage(
                image: AssetImage("assets/images/no-file.jpg")
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(bottom: BorderSide(width: 1, color: Colors.grey))
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  searchBar(
                    width: _screenSize.width * 0.9,
                    hint: "請輸入資源名稱",
                    onSubmitted: (text) {
                      print(text);
                    },
                  ),

                ],
              ),

            ),

            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(

                    onTap: () async {
                      _showCustomModalBottomSheet(context, selectList );
                      print((_UporDown ? '↑' : '↓') + "    " + selectList[_index]);
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          padding: const EdgeInsets.only(left: 16, right: 13,top: 10),
                          child: Text(
                            (_UporDown ? '↑' : '↓')+'   按'+selectList[_index]+'排序',
                            style: const TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),

                        const Icon(Icons.keyboard_arrow_down_rounded),

                      ],
                    )
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


