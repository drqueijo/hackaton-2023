import 'package:app_flutter/helpers/extensions.dart';

class Livros{
  int codigo;
  String nome;
  String legenda;
  String isbn;
  String lugar;
  String ano;
  String autor;
  String editora;

  Livros ({required this.codigo, 
  required this.nome, 
  required this.legenda, 
  required this.isbn,
  required this.lugar,
  required this.ano,
  required this.autor,
  required this.editora});

  factory Livros.fromJson(Map<String, dynamic> mapa) => Livros(
    codigo:mapa["codigo"],
    nome: mapa["nome"],
    legenda: mapa["legenda"],
    isbn: mapa["isbn"],
    lugar: mapa["lugar"],
    ano: mapa["ano"] ,
    autor: mapa["autor"],
    editora: mapa["editora"],);
  
  }
