import 'package:flutter/material.dart';
import 'package:my_test/MyPages/result.dart';
import 'package:my_test/main.dart';
import 'package:my_test/models/soraglar.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  // Size? size;
  // double? height;
  // double? width;

  int _currentIndex = 0;
  //shutayda soraglary gecyas wagtlayn goylan
  /*
  @override
  void initState() {
    for (var i = 0; i <= allSoraglar.length - 3; i++) {
      allSoraglar[i].setAnswer = false;
      _currentIndex++;
    }
  }
*/
  void answer(int index, bool answer) {
    final current = allSoraglar[index];
    current.setAnswer = answer;

    if (index == allSoraglar.length - 1) {
// soraglar gutardy tamamlamaly
      setState(() {
        _currentIndex = -1;
      });
    } else {
      //Sorag entak bar indika gecmeli
      setState(() {
        _currentIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // var count = 0;
    // var countE = 0;
    // var countN = 0;
    // size = MediaQuery.of(context).size;
    // height = size!.height;
    // width = size!.width;

    return Scaffold(
      body: Container(
        width: 360, //MediaQuery.of(context).size.width,
        height: 740, //MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("fon.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: _currentIndex == -1
            ? Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200, bottom: 50),
                    child: Text(
                      'Siz ähli soraglara jogap berdiňiz',
                      style: TextStyle(
                          color: Color.fromRGBO(58, 57, 57, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                  InkWell(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyResult()));
                    }),
                    child: Container(
                      width: 170,
                      height: 50,
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      margin: EdgeInsets.only(bottom: 170),

                      //width: buttonWidth,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(197, 231, 226, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Netijäni görkez",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(58, 57, 57, 1)),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 180, left: 30, right: 20, bottom: 0),
                    child: Text(
                      (58 - allSoraglar[_currentIndex].id).toString() +
                          ". " +
                          allSoraglar[_currentIndex].question,
                      style: TextStyle(
                          color: Color.fromRGBO(58, 57, 57, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30, top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: (() => answer(_currentIndex, false)),
                          child: Container(
                            width: 100,
                            height: 40,
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                            margin: EdgeInsets.only(bottom: 170),

                            //width: buttonWidth,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(249, 191, 190, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "Ýok",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(58, 57, 57, 1)),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (() => answer(_currentIndex, true)),
                          child: Container(
                            width: 100,
                            height: 40,
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                            margin: EdgeInsets.only(bottom: 170),

                            //width: buttonWidth,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(197, 231, 226, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "Hawa",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(58, 57, 57, 1)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
