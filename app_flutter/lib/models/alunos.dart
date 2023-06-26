import 'package:app_flutter/helpers/extensions.dart';

class Alunos {
  int codigo;
  String ra;
  String nome;
  String endereco;
  String cidade;
  String uf;
  String telefone;
  String curso;

  Alunos({
    required this.codigo,
    required this.ra,
    required this.nome,
    required this.endereco,
    required this.cidade,
    required this.uf,
    required this.telefone,
    required this.curso,
  });

  factory Alunos.fromJson(Map<String, dynamic> json) {
    return Alunos(
      codigo: int.parse(json['codigo'].toString()),
      ra: json['ra'],
      nome: json['nome'],
      endereco: json['endereco'],
      cidade: json['cidade'],
      uf: json['uf'],
      telefone: json['telefone'],
      curso: json['curso'],
    );
  }
}
