import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_test/MyPages/ContactPage.dart';
import 'package:my_test/MyPages/aboutUs.dart';
import 'package:my_test/MyPages/instruction.dart';
import 'package:my_test/MyPages/out.dart';
import 'package:my_test/global/image_path.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void goInstruction(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: ((context) => Instruction())));
  }

  void goAboutUs(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: ((context) => AboutUs())));
  }

  void goContact(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: ((context) => Contact())));
  }

  void goOut(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: ((context) => Out())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'fon.png',
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 72, left: 22),
                height: 140,
                width: 140,
                child: Image.asset("logo3.png"),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Psihologik test".toUpperCase(),
                  style: const TextStyle(
                    color: Color.fromRGBO(58, 57, 57, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              //menyularyn columny

              menyular(
                onTap: () => goInstruction(context),
                renk: const Color.fromRGBO(197, 231, 226, 1),
                soz: "Test",
                surat: MyImages.testIcon,
                boshluk: 60,
              ),

              menyular(
                onTap: () => goContact(context),
                renk: Colors.white,
                soz: "Hawarlaşmak",
                surat: MyImages.phoneIcon,
                boshluk: 30,
              ),

              menyular(
                onTap: () => goAboutUs(context),
                renk: Colors.white,
                soz: "Biz barada",
                surat: MyImages.personIcon,
                boshluk: 40,
              ),
              menyular(
                onTap: () => goOut(context),
                renk: const Color.fromRGBO(249, 191, 190, 1),
                soz: "Çykmak",
                surat: MyImages.outIcon,
                boshluk: 50,
              ),

              // menyular(Color.fromRGBO(197, 231, 226, 1), "Test",
              //     MyImages.testIcon, 60),

              // menyular(Colors.white, "Hawarlaşmak", MyImages.phoneIcon, 30),
              // menyular(Colors.white, "Biz barada", MyImages.personIcon, 40),
              // menyular(Color.fromRGBO(249, 191, 190, 1), "Çykmak",
              //     MyImages.outIcon, 50),
            ],
          ),
        ],
      ),
    );
  }

  menyular({
    required Color renk,
    required String soz,
    required String surat,
    required double boshluk,
    required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0, top: 20),
        child: Column(
          children: [
            // ListTile(leading: Image(image: MyImages.boydaasynky, Colors.),)
            Container(
              width: 280,
              height: 45,
              decoration: BoxDecoration(
                  color: renk,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 1)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    SvgPicture.asset(surat),
                    Padding(
                      padding: EdgeInsets.only(left: boshluk, bottom: 3),
                      child: Text(
                        soz,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
