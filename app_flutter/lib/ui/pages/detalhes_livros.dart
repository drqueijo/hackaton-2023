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
          ],
        ),
      ),
    );
  }
}
