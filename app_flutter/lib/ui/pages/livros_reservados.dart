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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
    );
  }
}
