import 'dart:convert';

List<Sorag> soragFromJson(String str) =>
    List<Sorag>.from(json.decode(str).map((x) => Sorag.fromJson(x)));

String soragToJson(List<Sorag> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Sorag {
  Sorag({
    required this.id,
    required this.question,
  });

  final int id;
  final String question;
  bool? _answer;

  get getAnswer => _answer;

  set setAnswer(answer) => _answer = answer;

  factory Sorag.fromJson(Map<String, dynamic> json) => Sorag(
        id: json["id"],
        question: json["question"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "question": question,
      };

  @override
  String toString() {
    return 'id=$id, question=$question';
  }
}
