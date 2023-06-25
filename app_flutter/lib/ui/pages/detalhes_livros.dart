<<<<<<< HEAD
import 'package:flutter/material.dart';

class DetalhesLivro extends StatefulWidget {
  final dynamic livro;

  const DetalhesLivro({Key? key, required this.livro}) : super(key: key);

  @override
  _DetalhesLivroState createState() => _DetalhesLivroState();
}

class _DetalhesLivroState extends State<DetalhesLivro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Livro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Título: ${widget.livro['titulo']}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Autor: ${widget.livro['autor']}',
              style: TextStyle(fontSize: 16),
            ),
            // Adicione outros detalhes do livro conforme necessário
=======
import 'package:app_flutter/models/livros.dart';
import 'package:flutter/material.dart';

class DetalhesLivro extends StatelessWidget {
  final Livro livro;

  DetalhesLivro({required this.livro});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Livro'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Título: ${livro.title}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Subtítulo: ${livro.subtitle}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'ID: ${livro.id}',
              style: TextStyle(fontSize: 16),
            ),
        
>>>>>>> 8c951d264d1584a3e3a866e3deb5bc4b5dee535b
          ],
        ),
      ),
    );
  }
}
