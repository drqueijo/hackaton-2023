import 'package:flutter/material.dart';
import 'package:app_flutter/models/reservalivro.dart';
/*
class LivrosReservadosAluno extends StatelessWidget {
  final Alunos aluno;
  final List<Livro> livrosReservados;
  static const routeName = '/lista_Livros';

  LivrosReservadosAluno({
    required this.aluno,
    required this.livrosReservados,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livros Reservados'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Aluno: ${aluno.nome}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Livros Reservados:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: livrosReservados.length,
                itemBuilder: (context, index) {
                  final livro = livrosReservados[index];
                  return ListTile(
                    title: Text(livro.title),
                    subtitle: Text(livro.subtitle),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/