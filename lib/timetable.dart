import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'config.dart';

import 'timetable_util/expand_fab.dart';
import 'timetable_util/compare_table.dart';

class TimeTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TimeTableState();
}

// var flag = false;

class _TimeTableState extends State<TimeTable> {
  final textInput = TextEditingController();

  var coursesList = couseList_;
  var currTable = tableList_[userID_];

  var weekList = ['Mon', 'Tue', 'Thu', 'Wed', 'Fri', 'Sat', 'Sun'];
  var dateList = [];
  var currentWeekIndex = 0;

  @override
  void initState() {
    super.initState();

    var monday = 1;
    var mondayTime = DateTime.now();

    //获取本周星期一是几号
    while (mondayTime.weekday != monday) {
      mondayTime = mondayTime.subtract(const Duration(days: 1));
    }

    mondayTime.year;
    mondayTime.month;
    mondayTime.day;

    for (int i = 0; i < 7; i++) {
      dateList.add(
          mondayTime.month.toString() + "/" + (mondayTime.day + i).toString());
      if ((mondayTime.day + i) == DateTime.now().day) {
        setState(() {
          currentWeekIndex = i + 1;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // var table = drawTable(tableList);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        // color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 8, childAspectRatio: 1 / 1),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: index == currentWeekIndex
                          ? Colors.black87
                          : Colors.white,
                      child: Center(
                        child: index == 0
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Week",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // SpaceWidget(height: 5),
                                  Text("Day", style: TextStyle(fontSize: 12)),
                                ],
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(weekList[index - 1],
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: index == currentWeekIndex
                                            ? Colors.white70
                                            : Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  // SpaceWidget(height: 5),
                                  Text(dateList[index - 1],
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: index == currentWeekIndex
                                              ? Colors.grey
                                              : Colors.black87)),
                                ],
                              ),
                      ),
                    );
                  }),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: GridView.builder(
                          shrinkWrap: true,
                          // physics:ClampingScrollPhysics(),
                          itemCount: 10,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1, childAspectRatio: 1 / 2),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                child: Center(
                                  child: Text(
                                    (index + 1).toInt().toString(),
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.teal,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  // border: Border.all(color: Colors.black12, width: 0.5),
                                  border: Border(
                                    bottom: BorderSide(
                                        color: Colors.black12, width: 0.5),
                                    right: BorderSide(
                                        color: Colors.black12, width: 0.5),
                                  ),
                                ));
                          }),
                    ),
                    Expanded(
                      flex: 7,
//============================顯示table========================
                      child: drawTable(currTable),
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ExpandableFab(
        distance: 112.0,
        children: [
          ActionButton(
            onPressed: () => showDialog<void>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: const Text("輸入學生ID"),
                  actions: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: TextField(
                        controller: textInput,
                        decoration: const InputDecoration(
                          labelText: "ID",
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),

                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('CLOSE'),
                    ),

                  ],
                );
              },
            ),
            icon: const Icon(Icons.format_size),
          ),
          ActionButton(
            onPressed: () => setState(() {
              currTable = CompareTable(tableList_[userID_], tableList_[textInput.text]);
            }),
            icon: const Icon(Icons.compare),
          ),
          ActionButton(
            onPressed: () => setState(() {
              currTable = tableList_[userID_];
            }),
            icon: const Icon(Icons.clear_all),
          ),

        ],
      ),
    );
  }












//  依據提供的table繪製課表
  Widget drawTable(var table) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 70,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7, childAspectRatio: 1 / 2),
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          // border: Border.all(color: Colors.black12, width: 0.5),
                          border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(32, 170, 210, 1),
                                width: 0.5),
                            right: BorderSide(
                                color: Color.fromRGBO(18, 195, 180, 1),
                                width: 0.5),
                          ),
                        )),
                  ),
                ],
              ),
              //===================================================
              DrawCourses(table, index),
            ],
          );
        });
  }

//  繪製課程，傳入參考的table以及當前的表格位置
  DrawCourses(table, index) {
    // print(table);

    var week = index % 7 + 1;
    var courseTime = index ~/ 7 + 1;
    var color = Colors.white;
    var title = "";

    var hasCourse = false;
    var hasPreCourse = false;
    var hasFollowCourse = false;

    if (table[week] != null) {
      // 遍历当天所有课程
      table[week]!.forEach((key, value) {
        // 如果对应课程的课时资料中含有当前block
        if (value.contains(courseTime)) {
          // 当发现当前的key对应这个block，准备title和color
          hasCourse = true;
          try {
            // print("Color: " + coursesList[key]![1].toString());
            color = coursesList[key]![1] as Color;
            title = key + '\n---------\n' + (coursesList[key]![0] as String);
          } catch (e) {
            print(e);
          }
          // 如果上一节课也是他
          if (value.contains(courseTime - 1)) {
            hasPreCourse = true;
          }
          // 如果下一节课也是他
          if (value.contains(courseTime + 1)) {
            hasFollowCourse = true;
          }
        }
      });
    }
    if (hasCourse) {
      return GestureDetector(
        onTap: () {
          print("click:  " + week.toString() + " " + courseTime.toString());
        },
        child: Container(
          height: 99 + (hasPreCourse ? 0.5 : 0) + (hasFollowCourse ? 0.5 : 0),
          margin: EdgeInsets.only(
            left: 0.5,
            right: 0.5,
            top: hasPreCourse ? 0 : 0.5,
            bottom: hasFollowCourse ? 0 : 0.5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: (hasPreCourse
                  ? const Radius.circular(0)
                  : const Radius.circular(2)),
              topLeft: (hasPreCourse
                  ? const Radius.circular(0)
                  : const Radius.circular(2)),
              bottomRight: (hasFollowCourse
                  ? const Radius.circular(0)
                  : const Radius.circular(2)),
              bottomLeft: (hasFollowCourse
                  ? const Radius.circular(0)
                  : const Radius.circular(2)),
            ),
            color: color,
          ),
          child: Center(
            child: Text(
              (hasPreCourse ? "" : title),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white, fontSize: 11, letterSpacing: 1),
            ),
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: () {
        print("click:  " + week.toString() + " " + courseTime.toString());
      },
      child: Container(
          height: 99,
          margin: const EdgeInsets.all(0.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            // color: colorList[index % 7],
          )),
    );
  }
}







