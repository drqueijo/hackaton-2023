import 'package:app_flutter/helpers/login_helper.dart';
import 'package:app_flutter/models/login.dart';
import 'package:app_flutter/ui/widgets/botao.dart';
import 'package:app_flutter/ui/pages/lista_livros.dart';
import 'package:app_flutter/ui/pages/livros_reservados.dart';
import 'package:app_flutter/ui/pages/detalhes_alunos.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}):super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final block = LoginHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Inicial'),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const CircularProgressIndicator();
            default:
              if (snapshot.hasError) {
                return Text('Deu erro: ${snapshot.error}');
              }
              return _criarLista(snapshot.data!);
          }
        },
        future: block.getLogin()
     )
    );
  }

  Widget _criarLista(Login login){
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Botao(
              texto: 'Lista de Livros',
              onPressed: () {
                Navigator.pushNamed(context, ListaLivros.routeName);
              },
            ),Text(login.ra),
            Botao(
              texto: 'Livros Reservados',
              onPressed: () {
                Navigator.pushNamed(context, LivrosReservados.routeName);
              },
            ),
          Botao(
              texto: 'Detalhes do Aluno',
              onPressed: () {
                Navigator.pushNamed(context, DetalhesAluno.routeName);
              },
            ),
          ],
        ),
      );
  }

  
}

