import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Out extends StatelessWidget {
  const Out({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(top: 0, right: 0, child: Image.asset('blue.png')),
          Positioned(bottom: 0, left: 0, child: Image.asset('pink.png')),
          Positioned(
            top: 15,
            left: 25,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              tooltip: 'go back',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
              top: 150,
              left: 20,
              child: Column(
                children: [
                  Image.asset(
                    'emojii.png',
                    width: 100,
                    height: 100,
                  ),
                  Text(
                    "Siz hakykatdanam çykmakçymy?",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.78),
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: (() => Navigator.pop(context)),
                          child: Container(
                            width: 100,
                            height: 40,
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                            margin: EdgeInsets.only(right: 50),

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
                          onTap: (() => Navigator.pop(context)),
                          child: Container(
                            width: 100,
                            height: 40,
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                            margin: EdgeInsets.only(bottom: 0),

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
              ))
        ],
      ),
    );
  }
}
