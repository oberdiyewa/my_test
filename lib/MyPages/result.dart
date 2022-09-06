import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_test/MyPages/myHomePage.dart';

import '../main.dart';
import '../models/soraglar.dart';

enum Haracters {
  yalancy(typeName: 'yalan', habit: ' '),
  sangwinik(
      typeName: 'SANGWINIK',
      habit:
          'açyk, alçak, gürlegen, duýgur, erkin, sada, şähdaçyk, aladasyz, inisiatiwaly'),
  holerik(
      typeName: 'HOLERIK',
      habit:
          'aktiw, duýgur, ynjalyksyz, agressiw, üýtgeýji, durnuksyz, impulsiw, optimist'),
  melanholik(
      typeName: 'MELANHOLIK',
      habit:
          'keýpi aňsat bozulýar, galagoply, pikirlenmesi bir boluşly, pessimist, pikir ýöretmä ýykgyn, sabyrly, köpçülige goşulmaýanm ýuwaş'),
  flegmatik(
      typeName: 'FLEGMATIK',
      habit:
          'passiw, seresaply, paýhasly, hoşniýetli, parahatlyk söýüji, ynamdar, asuda, ynam dörediji, deňagramly');

  const Haracters({
    required this.typeName,
    required this.habit,
  });

  final String typeName;
  final String habit;
}

class MyResult extends StatelessWidget {
  MyResult({super.key});

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

  Haracters yourHaracter() {
    var count = 0;
    var countE = 0;
    var countN = 0;
    ////// Shu yere seret
    Haracters? rezult;

    var hawalar = hawawlar();
    for (var element in hawalar) {
      //print(element.id);
      if (element.id == 6 || element.id == 24 || element.id == 36) {
        count++;
      }
    }
    //barde yoklary barlaya yalan shkalasyndan

    var yokla = yoklar();
    // print(yokla);
    for (var element in yokla) {
      // print(element.id);
      if (element.id == 12 ||
          element.id == 18 ||
          element.id == 30 ||
          element.id == 42 ||
          element.id == 48 ||
          element.id == 54) {
        count++;
      }
    }
    print("yalan shkalasyndaky ballar: ${count.toString()}");

    //eger yalan shkalasyndan ustunlikli gecse
    if (count < 4) {
      //1st step  ekstrawersiya barlamak
      for (var element in hawalar) {
        //print(element.id);
        if (element.id == 1 ||
            element.id == 3 ||
            element.id == 8 ||
            element.id == 10 ||
            element.id == 13 ||
            element.id == 17 ||
            element.id == 22 ||
            element.id == 25 ||
            element.id == 27 ||
            element.id == 37 ||
            element.id == 39 ||
            element.id == 44 ||
            element.id == 46 ||
            element.id == 49 ||
            element.id == 53 ||
            element.id == 56) {
          countE++;
        }
      }

      for (var element in yokla) {
        // print(element.id);
        if (element.id == 5 ||
            element.id == 15 ||
            element.id == 20 ||
            element.id == 29 ||
            element.id == 32 ||
            element.id == 34 ||
            element.id == 41 ||
            element.id == 51) {
          countE++;
        }
      }
      print("ekstrawersiya jemi: ${countE.toString()}");

      //2nd step shutayda emosional durnuklylygy barlamaly

      for (var element in hawalar) {
        //print(element.id);
        if (element.id == 2 ||
            element.id == 4 ||
            element.id == 7 ||
            element.id == 9 ||
            element.id == 11 ||
            element.id == 14 ||
            element.id == 16 ||
            element.id == 19 ||
            element.id == 21 ||
            element.id == 23 ||
            element.id == 26 ||
            element.id == 28 ||
            element.id == 31 ||
            element.id == 33 ||
            element.id == 35 ||
            element.id == 38 ||
            element.id == 40 ||
            element.id == 43 ||
            element.id == 45 ||
            element.id == 47 ||
            element.id == 50 ||
            element.id == 52 ||
            element.id == 55 ||
            element.id == 57) {
          countN++;
        }
      }
      print("emosional durnk : ${countN}");
      // shutayda tipini tapyas
      if (countE > 12 && countN > 12) {
        rezult = Haracters.holerik;
      } else if (countE < 12 && countN > 12) {
        rezult = Haracters.melanholik;
      } else if (countE < 12 && countN < 12) {
        rezult = Haracters.flegmatik;
      } else if (countE > 12 && countN < 12) {
        rezult = Haracters.sangwinik;
      }
    } else {
      //eger yalan shkalasyndan gechmese
      rezult = Haracters.yalancy;
    }

    return rezult!;
  }

  // Size? size;
  // double? height;
  // double? width;

  @override
  Widget build(BuildContext context) {
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
        child: Container(
          width: 360,
          height: 360,
          margin: EdgeInsets.only(top: 180, bottom: 220),
          decoration: BoxDecoration(
              color: Color.fromRGBO(195, 230, 224, 1),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 50, bottom: 20, left: 100, right: 100),
                  child: Text("Netije:",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.w600)),
                ),
                if (yourHaracter().typeName != 'yalan')
                  Text('Siziň temperamentiňiz   ${yourHaracter().typeName}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                if (yourHaracter().typeName != 'yalan')
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 30, right: 20, bottom: 30),
                    child: Text('Häsiýetnamasy:  ${yourHaracter().habit}',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.78),
                            fontSize: 18,
                            fontWeight: FontWeight.w400)),
                  ),
                if (yourHaracter().typeName != 'yalan')
                  InkWell(
                    onTap: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    }),
                    child: Container(
                      width: 160,
                      height: 40,
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      margin: EdgeInsets.only(bottom: 10, top: 30),

                      //width: buttonWidth,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(249, 191, 190, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Baş menýu",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(58, 57, 57, 1)),
                        ),
                      ),
                    ),
                  ),
                if (yourHaracter().typeName == 'yalan')
                  Padding(
                    padding: const EdgeInsets.only(top: 1, left: 20, right: 20),
                    child: Text(
                        'Bagyşlaň, Siz soraglara jogap bereniňizde hakykaty jogap berendigiňiz barada şübhelenýäris. Haýyş edýäs, täzeden synanşyň!',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.78),
                            fontSize: 20,
                            fontWeight: FontWeight.w600)),
                  ),
                if (yourHaracter().typeName == 'yalan')
                  //button
                  InkWell(
                    onTap: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    }),
                    child: Container(
                      width: 160,
                      height: 40,
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      margin: EdgeInsets.only(bottom: 10, top: 30),

                      //width: buttonWidth,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(249, 191, 190, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Baş menýu",
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
        ),
      ),
    );
  }
}
