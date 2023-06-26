import 'package:app_flutter/models/reservalivro.dart';
import 'package:app_flutter/ui/api/api.dart';
import 'package:flutter/material.dart';

class LivrosReservados extends StatefulWidget {
  static const routeName = '/livrosReservados';
  final String userId;

  LivrosReservados({required this.userId});

  @override
  _LivrosReservadosState createState() => _LivrosReservadosState();
}

class _LivrosReservadosState extends State<LivrosReservados> {
  late Future<List<ReservaLivro>> reservas;

  @override
  void initState() {
    super.initState();
    fetchReservas();
  }

  Future<void> fetchReservas() async {
    final api = ApiRemote();
    reservas = api.getReservasByUserId(widget.userId);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livros Reservados'),
      ),
      body: FutureBuilder<List<ReservaLivro>>(
        future: reservas,
        builder: (BuildContext context, AsyncSnapshot<List<ReservaLivro>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Erro ao carregar as reservas'),
            );
          } else if (snapshot.hasData) {
            final List<ReservaLivro>? listaReservas = snapshot.data;
            return ListView.builder(
              itemCount: listaReservas?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                final reserva = listaReservas?[index];
                return ListTile(
                  title: Text(reserva!.livro),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Código: ${reserva.codigo}'),
                      Text('Data de Início: ${reserva.dataInicio}'),
                      Text('Data Final: ${reserva.dataFinal}'),
                    ],
                  ),
                );
              },
            );
          } else {
            return Center(
              child: Text('Nenhuma reserva encontrada'),
            );
          }
        },
      ),
    );
  }
}
