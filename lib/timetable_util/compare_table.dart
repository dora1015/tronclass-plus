import 'package:flutter/material.dart';


// 比較兩個課表之間重合與不重合的時間
CompareTable(table1, table2) {
  var tmp = {
    1:{}, 2:{}, 3:{}, 4:{}, 5:{}, 6:{}, 7:{},
  };
  if (table1 == null || table2 == null){
    return {};
  }
  for(var i = 1; i<8; i++){
    if(table1[i] == null && table2[i] == null) {
      continue;
    }
    var tmpCourse1 = [];
    // 遍歷課表當天所有課程
    table1[i]!.forEach((key, value) {
      tmpCourse1.addAll(value);
    });
    var tmpCourse2 = [];
    table2[i]!.forEach((key, value) {
      tmpCourse2.addAll(value);
    });
    // print(tmpCourse1.toString() + " " + tmpCourse2.toString());
    // [2,3,4,8]
    // [1,3,4,8]
    List coincide = tmpCourse1.where((element) => tmpCourse2.contains(element)).toList();
    // print(coincide.toString());
    List difference = [...tmpCourse1,...tmpCourse2];
    // print(coincide.toString() + " " + difference.toString());

    var mapTemp = {
      "difference":difference,
      "coincide":coincide,
    };

    tmp[i] = mapTemp;
  }
  // print(tmp);

  return tmp;

}