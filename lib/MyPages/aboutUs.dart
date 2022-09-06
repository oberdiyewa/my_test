import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_test/MyPages/myHomePage.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Material(
        child: Stack(
          children: [
           
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, left: 10, right: 10, bottom: 46),
              child: Image.asset(
                'gradient.png',
                width: 340,
                height: 700,
              ),
            ),
            Positioned(top: 0, right: 0, child: Image.asset('blue.png')),
            Positioned(bottom: 0, left: 0, child: Image.asset('pink.png')),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 110, bottom: 10, left: 30, right: 30),
                    child: Text(
                      "Biz barada",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        fontFamily: 'workSan',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 20, left: 30, right: 30),
                    child: Text(
                      """Psihologiýada her bir adam öz gylyk-häsiýeti, özüni alyp baryşy boýunça 4 dürli temperamenta bölünýär.Temperamnet diýip, şahsyýetiň özüni alyp barşynyň dinamikasyny(ýagny güýjüni) kesgitleýän durnukly indiwidual psihologik aýratynlyklaryna aýdylýar. Hazirki wagtda temperamentiň tipini anyklamak üçin birnäçe usullar bar. Biz bu programmamyzda G.Ayzenkiň test usulyny ulanyarys. Bu test 57 sany soragdan ybarat bolup. Her bir ulanyjy soraglara "Hawa" yada "yok" jogap berýärler. Ähli soraglar jogaplanandan soňra, "Ýalan şkalasy" barlanýar. "Ýalan şkalasy" bu ulanyjy soraglara dogry jogap berendigni ýa-da hakykaty aýtman, jemgyýetde kabul edilen kadalara laýyklykda jogap berenligini barlaýan tapgyrydyr.Eger ulanyjy ähli soraglarda hakykaty aýdan bolsa netije aýdylýar: holerik, sangwinik, flegmatik, melanholik.Eger ýalan şkalasynda hakykaty jogap bermedigi anyklanylsa ulanyjydan teste tazeden jogaplamagy soralyar.""",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontFamily: 'workSan',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
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
                  debugPrint('basyldy');
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
