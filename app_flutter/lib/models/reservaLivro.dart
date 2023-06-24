import 'package:app_flutter/helpers/extensions.dart';

class ReservaLivro{
  int codigo;
  String aluno;
  String livro;
  String dataInicio;
  String dataFinal;

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