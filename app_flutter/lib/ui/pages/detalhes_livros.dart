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
        
          ],
        ),
      ),
    );
  }
}
