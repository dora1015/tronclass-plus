import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'config.dart';

class TimeTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {

  var coursesList = couseList_;
  var tableList = tableList_;
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
    // print('Recent monday '+DateTime.now().day.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              // gradient: LinearGradient(colors: [
              //   Color.fromRGBO(32, 170, 210, 1),
              //   Color.fromRGBO(18, 195, 180, 1),
              // ])
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8, childAspectRatio: 1 / 1),
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
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, childAspectRatio: 1 / 2),

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
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 70,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 7, childAspectRatio: 1 / 2),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Stack(
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
                                DrawCourses(index),
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
          // _bottomView
        ],
      ),
    ));
  }

  DrawCourses(index) {
    var week = index % 7 + 1;
    var courseTime = index ~/ 7 + 1;
    var color = Colors.white;
    var title = "";

    var hasCourse = false;
    var hasPreCourse = false;
    var hasFollowCourse = false;


    if(tableList[week] != null) {
      // 遍历当天所有课程
      tableList[week]!.forEach((key, value) {
        // 如果对应课程的课时资料中含有当前block
        if(value.contains(courseTime)) {
          // 当发现当前的key对应这个block，准备title和color
          hasCourse = true;
          try {
            color = coursesList[key]![1] as Color;
            title = key + '\n---------\n' + (coursesList[key]![0] as String);
          } catch(e){
            print(e);
          }
          // 如果上一节课也是他
          if(value.contains(courseTime - 1)) {
            hasPreCourse = true;
          }
          // 如果下一节课也是他
          if(value.contains(courseTime + 1)) {
            hasFollowCourse = true;
          }

        }
      });
    }
    if(hasCourse){
      return GestureDetector(
        onTap: () {
          print("click:  " + week.toString() + " " + courseTime.toString());
        },
        child: Container(
          height: 99 + ( hasPreCourse ? 0.5 : 0) +  ( hasFollowCourse ? 0.5 : 0),
          margin: EdgeInsets.only(
            left:0.5,
            right: 0.5,
            top: hasPreCourse ? 0 : 0.5,
            bottom: hasFollowCourse ? 0 : 0.5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: ( hasPreCourse ? Radius.circular(0) : Radius.circular(2)),
              topLeft: ( hasPreCourse ? Radius.circular(0) : Radius.circular(2)),
              bottomRight: ( hasFollowCourse ? Radius.circular(0) : Radius.circular(2)),
              bottomLeft: ( hasFollowCourse ? Radius.circular(0) : Radius.circular(2)),
            ),
            color: color,
          ),
          child: Center(
            child: Text(
              (hasPreCourse ? "" : title),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  letterSpacing: 1),
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
          margin: EdgeInsets.all(0.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            // color: colorList[index % 7],
          )
      ),
    );


  }


}
