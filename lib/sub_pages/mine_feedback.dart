import 'package:flutter/material.dart';

class MineFeedback extends StatefulWidget {
  const MineFeedback({Key? key}) : super(key: key);

  @override
  State<MineFeedback> createState() => _MineFeedbackState();
}

class _MineFeedbackState extends State<MineFeedback> {
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    final emailTEC = TextEditingController();
    final phoneTEC = TextEditingController();
    final phoneTypeTEC = TextEditingController();
    final courseTEC = TextEditingController();
    final eventTEC = TextEditingController();
    final descriptionTEC = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "问题反馈",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/mine');
          },
          // color: Colors.black,
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            Container(
              height: 10,
            ),
            Container(
              color: Colors.white,
              height: _screenSize.height * 0.7,
              child: ListView(
                children: [
                  TextField(
                    controller: emailTEC,
                    decoration: const InputDecoration(
                      labelText: "   邮箱",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "xxx@thu.edu.tw",
                    ),
                  ),
                  TextField(
                    controller: phoneTEC,
                    decoration: const InputDecoration(
                      labelText: "   电话号码",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "(选填)请输入手机号以便我们能更及时联系您",
                    ),
                  ),
                  TextField(
                    controller: phoneTypeTEC,
                    decoration: const InputDecoration(
                      labelText: "   手机型号",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "请填写手机型号以便我们定位问题",
                    ),
                  ),
                  TextField(
                    controller: courseTEC,
                    decoration: const InputDecoration(
                      labelText: "   课程",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "选填",
                    ),
                  ),
                  TextField(
                    controller: eventTEC,
                    decoration: const InputDecoration(
                      labelText: "   学习活动",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "选填",
                    ),
                  ),
                  TextField(
                    controller: descriptionTEC,
                    decoration: const InputDecoration(
                      labelText: "   问题描述",
                      // floatingLabelStyle: ,
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "选填",
                    ),
                    maxLines: 10,
                  ),
                ],
              ),
            ),
            Container(
              width: _screenSize.width * 0.9,
              height: 50,
              child: MaterialButton(
                  color: Colors.teal[300],
                  onPressed: () {
                    print(emailTEC.text +
                        " \n" +
                        phoneTEC.text +
                        " \n" +
                        phoneTypeTEC.text +
                        " \n" +
                        courseTEC.text +
                        " \n" +
                        eventTEC.text +
                        " \n" +
                        descriptionTEC.text +
                        " \n");
                  },
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Text(
                    '提交',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
