<<<<<<< HEAD
import 'package:app_flutter/models/reservaLivro.dart';
import 'package:flutter/material.dart';

class ReservasLivros extends StatefulWidget {
  const ReservasLivros({Key? key});

  @override
  State<ReservasLivros> createState() => _ReservasLivrosState();
}

class _ReservasLivrosState extends State<ReservasLivros> {
  List<ReservaLivro> reservas = [
    ReservaLivro(
      codigo: 1,
      aluno: 'João',
      livro: 'Livro 1',
      dataInicio: '2023-06-20',
      dataFinal: '2023-06-30',
    ),
    ReservaLivro(
      codigo: 2,
      aluno: 'Maria',
      livro: 'Livro 2',
      dataInicio: '2023-07-01',
      dataFinal: '2023-07-10',
    ),
    // Adicione outras reservas de livros conforme necessário
  ];
=======
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
>>>>>>> 8c951d264d1584a3e3a866e3deb5bc4b5dee535b

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: const Text('Livros Reservados'),
      ),
      body: ListView.builder(
        itemCount: reservas.length,
        itemBuilder: (BuildContext context, int index) {
          final reserva = reservas[index];
          return ListTile(
            title: Text('Reserva ID: ${reserva.codigo}'),
            subtitle: Text('Livro: ${reserva.livro}'),
            trailing: Text('Período: ${reserva.dataInicio} - ${reserva.dataFinal}'),
          );
        },
=======
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
>>>>>>> 8c951d264d1584a3e3a866e3deb5bc4b5dee535b
      ),
    );
  }
}
<<<<<<< HEAD
=======
*/
>>>>>>> 8c951d264d1584a3e3a866e3deb5bc4b5dee535b
