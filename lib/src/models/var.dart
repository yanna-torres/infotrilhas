// ignore_for_file: non_constant_identifier_names

import 'package:infotrilhas/src/models/cadeiras.dart';

int status = 1;

List<Cadeira> getCadeira(String type) {
  List<Cadeira> l = [];
  for (var elem in cadeiras_trilha) {
    if (elem.type == type) l.add(elem);
  }
  return l;
}

List<Cadeira> cadeiras_trilha = [
  Cadeira(
    type: 'trilha',
    title: 'Desenho I',
    description:
        'Cadeira obrigatória oferecida no primeiro semestre do SMD, todo aluno é automaticamente matriculado nela ao entrar. Seu objetivo é ensinar os conceitos fundamentais do desenho, aplicáveis em qualquer meio, para o desenvolvimento de noção artística e conceitual.',
    imgPath: '',
    sylabuss:
        'Técnicas e uso dos instrumentos de desenho. Desenho a mão livre e expressão gráfica. Técnica de composição. Proporção, luz, sombra, textura, fundo e figura. Noções básicas de desenho auxiliado por computador.',
    offered: '2023.1 - Diurno',
    pratice: 4,
    theory: 0,
  ),
  Cadeira(
    type: 'trilha',
    title: 'Desenho II',
    description:
        'Cadeira eletiva, tem preferência para aqueles que estão vindo do quarto semestre. A primeira cadeira da trilha depois do baque do vazio do terceiro semestre, tem como objetivo se aprofundar nos elementos envolvendo desenho, desde as concepções das ideias até a finalização.',
    imgPath: '',
    sylabuss:
        'Linguagem e criação visual. Técnicas de representação e elementos gráficos. Técnicas de desenho manual e digital. Análise e experimentação gráfica. Representação visual aplicada.',
    offered: '2023.1 - Noturno',
    pratice: 4,
    theory: 0,
  ),
];
