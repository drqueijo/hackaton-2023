import 'package:app_flutter/helpers/extensions.dart';

<<<<<<< HEAD
class ReservaLivro{
  int codigo;
=======
class ReservaLivro {
  String codigo;
>>>>>>> 8c951d264d1584a3e3a866e3deb5bc4b5dee535b
  String aluno;
  String livro;
  String dataInicio;
  String dataFinal;

<<<<<<< HEAD
  ReservaLivro({required this.codigo,
  required this.aluno,
  required this.livro,
  required this.dataInicio,
  required this.dataFinal});

  factory ReservaLivro.fromJson(Map<String, dynamic> mapa) =>ReservaLivro(
    codigo: mapa['student'],
    aluno: mapa['studen'] , 
    livro: mapa['book'], 
    dataInicio: mapa['start_date'], 
    dataFinal: mapa['end_date'],
  );
}
=======
  ReservaLivro({
    required this.codigo,
    required this.aluno,
    required this.livro,
    required this.dataInicio,
    required this.dataFinal,
  });

  factory ReservaLivro.fromJson(Map<String, dynamic> mapa) => ReservaLivro(
        codigo: mapa['student'],
        aluno: mapa['aluno'],
        livro: mapa['livro'],
        dataInicio: mapa['start_date'],
        dataFinal: mapa['end_date'],
      );
}
>>>>>>> 8c951d264d1584a3e3a866e3deb5bc4b5dee535b
