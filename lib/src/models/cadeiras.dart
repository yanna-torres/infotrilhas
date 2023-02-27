import 'package:infotrilhas/src/models/professors.dart';

class Cadeira {
  String type;
  String title;
  String imgPath;
  String description;
  List<Professor> professores = [];
  int theory;
  int pratice;
  String sylabuss;
  List<Cadeira> requirements = [];
  String offered;
  String whySister = '';

  Cadeira({
    required this.type,
    required this.title,
    required this.description,
    required this.imgPath,
    required this.sylabuss,
    required this.offered,
    required this.pratice,
    required this.theory,
  });
}
