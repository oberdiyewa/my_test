import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_test/MyPages/ContactPage.dart';
import 'package:my_test/MyPages/aboutUs.dart';
import 'package:my_test/MyPages/instruction.dart';
import 'package:my_test/MyPages/myHomePage.dart';
import 'package:my_test/MyPages/out.dart';
import 'package:my_test/MyPages/questionPage.dart';
import 'package:my_test/models/soraglar.dart';

late final List<Sorag> allSoraglar;

Future<List<Sorag>> readJson() async {
  final String response = await rootBundle.loadString('assets/questions.json');
  return soragFromJson(response);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  allSoraglar = await readJson();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'workSAn'),
    home: const MyHomePage(),
  ));
}
