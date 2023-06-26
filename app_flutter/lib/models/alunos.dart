import 'package:app_flutter/helpers/extensions.dart';


class Alunos {
  int id;
  String ra;
  String nome;
  String endereco;
  String cidade;
  String uf;
  String telefone;
  String curso;

  Alunos({
  required this.id,
  required this.ra,
  required this.nome,
  required this.endereco,
  required this.cidade,
  required this.uf,
  required this.telefone,
  required this.curso
  
  });

  factory Alunos.fromJson(Map<String, dynamic> json) {
    return Alunos(
      id: json['id'],
      ra: json['ra'],
      nome: json['name'],
      endereco: json['address'],
      cidade: json['city'],
      uf: json['uf'],
      telefone: json['phone'],
      curso: json['course']
    );
  }
}