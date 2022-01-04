import 'package:flutter/material.dart';

String userName_ = "張三";
String userID_ = "s08350000";
String userNo_ = "s08350000@thu.edu.tw";

var couseList_ = {
  "线性代数":["黄老师", Color(0xff0f95b0)],
  "资料库":["吕老师", Color(0xff21373d)],
  "计算机网络":["江老师", Color(0xff3b818c)],
  "软体专案管理":["江老师", Color(0xff63bbd0)],
  "行动装置":["朱老师", Color(0xff1491a8)],
  "大数据分析":["焦老师", Color(0xff29b7cb)],
  "演算法":["黄老师", Color(0xff29b7cb)],
  "物联网与感测":["赖老师", Color(0xff7cabb1)],

  "difference":["",Colors.teal],
  "coincide":["",Colors.red],

};

var tableList_ = {
  "s08350000":{
    1:{
      "线性代数":[2,3,4],
      "资料库":[8],
    },
    2:{
      "计算机网络":[2,3,4],
      "资料库":[6,7],
    },
    3:{
      "软体专案管理":[2,3,4],
      "行动装置":[8,9,10],
    },
    4:{
      "大数据分析":[2,3,4],
      "演算法":[6,7,8],
    },
    5:{
      "物联网与感测":[6,7,8],
    },
    6:{

    },
    7:{

    },
  },
  "s08350001":{
    1:{
      "course1":[1,3,4],
      "course2":[8],
    },
    2:{
      "course3":[2,3,8],
      "course2":[6],
    },
    3:{
      "course4":[4,5,6],
      "course5":[8,9,10],
    },
    4:{
      "course6":[2,3,4,5],
      "course7":[6,7,8],
    },
    5:{
      "course8":[6,7,8],
    },
    6:{

    },
    7:{

      "course8":[6,7,8],
    },
  },

  "s08350002":{
    1:{
      "course1":[2,3],
      "course2":[6],
      "course3":[7,8,9],
    },
    2:{

    },
    3:{
      "course4":[1],
      "course5":[8,10],
    },
    4:{
      "course6":[2,3,4,5],
      "course7":[8],
    },
    5:{
      "course8":[6,7,8],
    },
    6:{
      "course7":[1,7,8],
      "course8":[5,9,10],
    },
    7:{

      "course8":[1,2,6,7,8],
    },
  }
};

var skipTime_ = 3;