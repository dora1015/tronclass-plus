import 'package:flutter/material.dart';
import '../main_page.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
//import 'Qrreader.dart';

class Courses extends StatefulWidget{
  const Courses({Key? key}) : super(key :key);
  @override
  State<Courses> createState() => _CoursesState();
}

bool aca = true;
class _CoursesState extends State<Courses> with TickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override build(BuildContext context){
    return Scaffold(

      //抽屜
      key:scaffoldKey,
      endDrawer:ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),),
        child: Drawer(
          child:ListView(
            children: [

              //year
              ListTile(
                title: const Text('Academic Year',style: TextStyle(fontSize: 16),),
              ),
              Column(
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 30.0,),
                        TextButton(
                            child: Text(
                                "All",
                                style: TextStyle(fontSize: 14)
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 30,right: 30)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.teal),
                                    )
                                )
                            ),
                            onPressed: () {

                            }
                        ),
                        SizedBox(width: 10),
                        TextButton(
                            child: Text(
                                "110",
                                style: TextStyle(fontSize: 14)
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 30,right: 30)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.teal),
                                    )
                                )
                            ),
                            onPressed: () => null
                        ),
                      ]
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 30.0,),
                        TextButton(
                            child: Text(
                                "109",
                                style: TextStyle(fontSize: 14)
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 30,right: 30)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.teal),
                                    )
                                )
                            ),
                            onPressed: () {

                            }
                        ),
                        SizedBox(width: 10),
                        TextButton(
                            child: Text(
                                "107",
                                style: TextStyle(fontSize: 14)
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 30,right: 30)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.teal),
                                    )
                                )
                            ),
                            onPressed: () => null
                        ),
                      ]
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 30.0,),
                        TextButton(
                            child: Text(
                                "108",
                                style: TextStyle(fontSize: 14)
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 30,right: 30)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.teal),
                                    )
                                )
                            ),
                            onPressed: () {

                            }
                        ),
                      ]
                  ),
                ],
              ),

              //semester
              ListTile(
                title: const Text('Semester',style: TextStyle(fontSize: 16),),
              ),
              Column(
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 30.0,),
                        TextButton(
                            child: Text(
                                "All",
                                style: TextStyle(fontSize: 14)
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 30,right: 30)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.teal),
                                    )
                                )
                            ),
                            onPressed: () {
                            }
                        ),
                        SizedBox(width: 10),
                      ]
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 30.0,),
                        TextButton(
                            child: Text(
                                "1st",
                                style: TextStyle(fontSize: 14)
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 30,right: 30)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.teal),
                                    )
                                )
                            ),
                            onPressed: () {

                            }
                        ),
                        SizedBox(width: 10),
                        TextButton(
                            child: Text(
                                "2nd",
                                style: TextStyle(fontSize: 14)
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 30,right: 30)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.teal),
                                    )
                                )
                            ),
                            onPressed: () => null
                        ),
                      ]
                  ),
                ],
              ),

              //Status
              ListTile(
                title: const Text('Status',style: TextStyle(fontSize: 16),),
              ),
              Column(
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 30.0,),
                        TextButton(
                            child: Text(
                                "All",
                                style: TextStyle(fontSize: 14)
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 30,right: 30)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.teal),
                                    )
                                )
                            ),
                            onPressed: () {

                            }
                        ),
                        SizedBox(width: 10),
                        TextButton(
                            child: Text(
                                "On Going",
                                style: TextStyle(fontSize: 14)
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 15,right: 15)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.teal),
                                    )
                                )
                            ),
                            onPressed: () => null
                        ),
                      ]
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 30.0,),
                        TextButton(
                            child: Text(
                                "Will Open",
                                style: TextStyle(fontSize: 14)
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 15,right: 15)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.teal),
                                    )
                                )
                            ),
                            onPressed: () {

                            }
                        ),
                        SizedBox(width: 10),
                        TextButton(
                            child: Text(
                                "Ended",
                                style: TextStyle(fontSize: 14)
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 18,right: 18)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.teal),
                                    )
                                )
                            ),
                            onPressed: () => null
                        ),
                      ]
                  ),
                ],
              ),

              //Role
              /*我覺得不需要的功能
                ListTile(
                  title: const Text('Role',style: TextStyle(fontSize: 16),),
                ),
                Column(
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(width: 30.0,),
                          TextButton(
                              child: Text(
                                  "All",
                                  style: TextStyle(fontSize: 14)
                              ),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 30,right: 30)),
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.teal),
                                      )
                                  )
                              ),
                              onPressed: () {

                              }
                          ),
                          SizedBox(width: 10),
                          TextButton(
                              child: Text(
                                  "110",
                                  style: TextStyle(fontSize: 14)
                              ),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 30,right: 30)),
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.teal),
                                      )
                                  )
                              ),
                              onPressed: () => null
                          ),
                        ]
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(width: 30.0,),
                          TextButton(
                              child: Text(
                                  "109",
                                  style: TextStyle(fontSize: 14)
                              ),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 30,right: 30)),
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.teal),
                                      )
                                  )
                              ),
                              onPressed: () {

                              }
                          ),
                          SizedBox(width: 10),
                          TextButton(
                              child: Text(
                                  "107",
                                  style: TextStyle(fontSize: 14)
                              ),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 30,right: 30)),
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.teal),
                                      )
                                  )
                              ),
                              onPressed: () => null
                          ),
                        ]
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(width: 30.0,),
                          TextButton(
                              child: Text(
                                  "108",
                                  style: TextStyle(fontSize: 14)
                              ),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 30,right: 30)),
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.teal),
                                      )
                                  )
                              ),
                              onPressed: () {

                              }
                          ),
                        ]
                    ),
                  ],
                ),*/
            ],
          ),
        ),
      ),

      backgroundColor: Colors.white,

      //上方空間
      appBar: AppBar(
        toolbarHeight: 150.10,
        elevation: 0.0,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            child:Column(
              children: [
                //空格
                SizedBox(height: 5.0,),

                //包含搜尋和掃描的部分
                Row(
                  children: <Widget>[
                    //空格
                    SizedBox(width: 10.0,),

                    //searchbar
                    Expanded(
                      child:TextField(
                        style: TextStyle(),
                        decoration: InputDecoration(

                          hintText: 'Search or Type in Access Code',
                          contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(30.0),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.grey[300],
                          prefixIcon: Icon(
                            Icons.search, color :Colors.black,
                          ),
                        ),
                      ),
                    ),

                    //空格
                    SizedBox(width: 10.0,),

                    //QRCODE
                    new IconButton(//
                      icon: new Icon(Icons.aspect_ratio_outlined),
                      onPressed: () => print('QRCODE_SCANNER'),
                    ),
                    //空格
                    SizedBox(width: 12.0,),
                  ],
                ),
                //切換欄 COURSE、ongoing
                TabBar(
                  controller: _tabController,
                  unselectedLabelColor: Colors.black,
                  labelColor:Colors.black,
                  tabs:const <Widget> [
                    Tab(text:'Courses'),
                    Tab(text:'onGoing'),
                  ],
                ),


                //轉換
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: new IconButton(icon: new Icon(Icons.aspect_ratio_outlined,),
                        onPressed: () => print('QRCODE_SCANNER'),),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: new IconButton(icon: new Icon(Icons.filter_list,),
                          onPressed: () {
                            scaffoldKey.currentState?.openEndDrawer();
                          }),
                    ),


                  ],
                ),
              ],
            ),
          ),
        ),


      ),

      //中間課程瀏覽
      body: Column(
        children: <Widget>[
          Container(height: 10.0, color: Colors.grey[300],),
          Expanded(
            child: ListView.separated(
              itemCount: 20,
              itemBuilder: (context,index) {
                return ListTile(
                  leading: const Icon(Icons.flight_land),
                  title: Text('$index class'),
                  onTap: () => print('$index class pressed'),
                  minVerticalPadding: 65.0,
                );
              },
              separatorBuilder:(BuildContext context,index) {
                return Divider(
                  height: 0.0,
                  color:Colors.grey,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}