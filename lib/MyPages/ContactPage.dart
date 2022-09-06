import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(top: 15, left: 10, child: Image.asset('contact.png')),
          Positioned(top: 0, right: 0, child: Image.asset('blue.png')),
          Positioned(bottom: 0, left: 0, child: Image.asset('pink.png')),
          Positioned(
              top: 60,
              left: 40,
              child: Container(
                width: 105,
                height: 105,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('oberdiyewa.jpg'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(50)),
              )),
          Positioned(
            top: 10,
            left: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 170, bottom: 50, left: 0, right: 30),
                  child: Text(
                    "Oguljemal Berdiýewa",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Color.fromRGBO(58, 57, 57, 1),
                      fontFamily: 'workSan',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 350,
                  height: 34,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(194, 206, 203, 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 20),
                        child: Icon(Icons.phone),
                      ),
                      Text(
                        "+993 61 841535",
                        style: TextStyle(
                            color: Color.fromRGBO(58, 57, 57, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  height: 34,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(194, 206, 203, 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 20),
                        child: Icon(Icons.message),
                      ),
                      Text(
                        "oberdiyewa17@gmail.com",
                        style: TextStyle(
                            color: Color.fromRGBO(58, 57, 57, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
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
        ],
      ),
    );
  }
}
