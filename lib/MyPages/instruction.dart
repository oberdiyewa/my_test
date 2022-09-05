import 'package:flutter/material.dart';
import 'package:my_test/MyPages/questionPage.dart';

// ignore: must_be_immutable
class Instruction extends StatelessWidget {
  Instruction({super.key});

  void goBashla(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: ((context) => const QuestionPage())));
  }

  var size, height, width;
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 170, bottom: 20),
              child: Text(
                "Instruksiýa".toUpperCase(),
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(58, 57, 57, 1),
                    fontFamily: 'workSan'),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 25, right: 25, bottom: 50),
              child: Text(
                """Soraglara "hawa" ýa-da "ýok" diýip jogap beriň. Soraglara jogap bereniňizde özüňizi gowy tarapdan görkezjek bolup hereket etmäň. Kän pikirlenmäň. Ilkinji kelläňize gelen jogap dogrudyr.""",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(58, 57, 57, 1),
                    fontFamily: 'workSan'),
                textAlign: TextAlign.center,
              ),
            ),

            //bashla button
            InkWell(
              onTap: () => goBashla(context),
              child: Container(
                width: 100,
                height: 40,
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                margin: EdgeInsets.only(bottom: 170),

                //width: buttonWidth,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(197, 231, 226, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Başla",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(58, 57, 57, 1)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

//   myButton(
//       {required double buttonWidth,
//       required Color renk,
//       required Function() onTap,
//       required String soz}) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         alignment: Alignment.bottomCenter,
//         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),

//         //width: buttonWidth,
//         decoration: BoxDecoration(
//           color: renk,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Center(
//           child: Text(
//             soz,
//             style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w700,
//                 color: Color.fromRGBO(58, 57, 57, 1)),
//           ),
//         ),
//       ),
//     );
//   }
}
