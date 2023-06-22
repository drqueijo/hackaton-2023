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

  factory Livros.fromMap(Map<String, dynamic> mapa){
    int numero = (mapa['url']??'').toString()
    .replaceAll('', '')
    .replaceAll('', '').toInt();

    return Livros(
      codigo: numero,
      nome: mapa['title']?? '',
      legenda: mapa['subtitle'],
      isbn: mapa['isbn'],
      lugar: mapa['local'],
      ano: mapa['year'],
      autor: mapa['author'],
      editora: mapa['publisher']
    );
  }
}