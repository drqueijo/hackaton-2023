import 'package:app_flutter/models/livros.dart';
import 'package:app_flutter/ui/api/api.dart';
import 'package:app_flutter/ui/pages/detalhes_livros.dart';
import 'package:flutter/material.dart';

class ListaLivros extends StatefulWidget {
  const ListaLivros({Key? key});
<<<<<<< HEAD

  @override
  State<ListaLivros> createState() => _ListaLivrosState();
}

class _ListaLivrosState extends State<ListaLivros> {
  late Future<List<dynamic>> livros;
=======
  static const routeName = '/lista_Livros';

  @override
  _ListaLivrosState createState() => _ListaLivrosState();
}

class _ListaLivrosState extends State<ListaLivros> {
  late Future<List<Livro>> livros;
>>>>>>> 8c951d264d1584a3e3a866e3deb5bc4b5dee535b

  @override
  void initState() {
    super.initState();
    fetchLivros();
  }

  Future<void> fetchLivros() async {
    final api = ApiRemote();
    livros = api.getLivros();
    setState(() {});
  }

<<<<<<< HEAD
  void _navigateToDetalhesLivro(dynamic livro) {
=======
  void _navigateToDetalhesLivro(Livro livro) {
>>>>>>> 8c951d264d1584a3e3a866e3deb5bc4b5dee535b
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetalhesLivro(livro: livro),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Livros'),
      ),
<<<<<<< HEAD
      body: FutureBuilder<List<dynamic>>(
        future: livros,
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
=======
      body: FutureBuilder<List<Livro>>(
        future: livros,
        builder: (BuildContext context, AsyncSnapshot<List<Livro>> snapshot) {
>>>>>>> 8c951d264d1584a3e3a866e3deb5bc4b5dee535b
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Erro ao carregar os livros'),
            );
          } else if (snapshot.hasData) {
<<<<<<< HEAD
            final List<dynamic>? listaLivros = snapshot.data;
=======
            final List<Livro>? listaLivros = snapshot.data;
>>>>>>> 8c951d264d1584a3e3a866e3deb5bc4b5dee535b
            return ListView.builder(
              itemCount: listaLivros?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                final livro = listaLivros?[index];
                return ListTile(
<<<<<<< HEAD
                  title: Text(livro['title'].toString()),
=======
                  title: Text(livro!.title),
>>>>>>> 8c951d264d1584a3e3a866e3deb5bc4b5dee535b
                  onTap: () => _navigateToDetalhesLivro(livro),
                );
              },
            );
          } else {
            return Center(
              child: Text('Nenhum livro encontrado'),
            );
          }
        },
      ),
    );
  }
}
