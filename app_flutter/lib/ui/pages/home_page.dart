import 'package:app_flutter/ui/widgets/botao.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}):super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Inicial'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Botao(
              texto: 'Lista de Livros',
              onPressed: () {
                Navigator.pushNamed(context, ListaLivros.routeName);
              },
            ),
            Botao(
              texto: 'Detalhes do Livro',
              onPressed: () {
                Navigator.pushNamed(context, DetalhesLivros.routeName);
              },
            ),
            Botao(
              texto: 'Livros Reservados',
              onPressed: () {
                Navigator.pushNamed(context, LivrosReservados.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListaLivros extends StatelessWidget {
  static const routeName = '/lista_Livros';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Livros'),
      ),
      body: Center(
        child: Text('Conteúdo da Lista de Livros'),
      ),
    );
  }
}

class DetalhesLivros extends StatelessWidget {
  static const routeName = '/detalhes_Livros';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Livro'),
      ),
      body: Center(
        child: Text('Conteúdo dos Detalhes do Livro'),
      ),
    );
  }
}

class LivrosReservados extends StatelessWidget {
  static const routeName = '/livros_Reservados';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livros Reservados'),
      ),
      body: Center(
        child: Text('Conteúdo dos Livros Reservados'),
      ),
    );
  }
}
