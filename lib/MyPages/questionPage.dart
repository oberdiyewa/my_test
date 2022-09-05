import 'package:flutter/material.dart';
import 'package:my_test/main.dart';
import 'package:my_test/models/soraglar.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  var size, height, width;

  int _currentIndex = 0;

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

  List<Sorag> hawawlar() {
    return allSoraglar
        .where(
          (element) => element.getAnswer == true,
        )
        .toList();
  }

  List<Sorag> yoklar() {
    return allSoraglar
        .where(
          (element) => element.getAnswer == false,
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("fon.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: _currentIndex == -1
            ? Column(
                children: [
                  const Text('tamam'),
                  TextButton(
                    onPressed: (() {
                      ////// Shu yere seret

                      for (var element in allSoraglar) {
                        print(' -Hawalar-- - -- - -- -- - -');
                        var hawalar = hawawlar();
                        for (var element in hawalar) {
                          print(element.id);
                        }
                        //print(hawalar);
                        print(' - -- - -- - -- -- - -');
                        print(' -Yoklar-- - -- - -- -- - -');
                        var yokla = yoklar();
                        print(yokla);

                        //print('${element.id}= ${element.getAnswer}');
                      }
                    }),
                    child: const Text('Jogaplary print et'),
                  )
                ],
              )
            : Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
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
                            padding:
                                EdgeInsets.symmetric(vertical: 0, horizontal: 0),
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
                            padding:
                                EdgeInsets.symmetric(vertical: 0, horizontal: 0),
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
