import 'package:flutter/material.dart';
import 'package:app_flutter/models/alunos.dart';

class DetalhesAluno extends StatefulWidget {
  const DetalhesAluno({Key? key}) : super(key: key);
  static const routeName = '/detalhes_alunos';

  @override
  State<DetalhesAluno> createState() => _DetalhesAlunoState();
}

class _DetalhesAlunoState extends State<DetalhesAluno> {
  @override
  Widget build(BuildContext context) {
    final Alunos aluno = ModalRoute.of(context)!.settings.arguments as Alunos;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Aluno'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Código: ${aluno.codigo}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'RA: ${aluno.ra}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Nome: ${aluno.nome}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Endereço: ${aluno.endereco}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Cidade: ${aluno.cidade}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'UF: ${aluno.uf}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Telefone: ${aluno.telefone}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Curso: ${aluno.curso}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}