import 'package:app_flutter/models/livros.dart';
import 'package:app_flutter/ui/api/api.dart';
import 'package:app_flutter/ui/pages/detalhes_livros.dart';
import 'package:flutter/material.dart';

class ListaLivros extends StatefulWidget {
  const ListaLivros({Key? key});

  @override
  State<ListaLivros> createState() => _ListaLivrosState();
}

class _ListaLivrosState extends State<ListaLivros> {
  late Future<List<dynamic>> livros;

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

  void _navigateToDetalhesLivro(dynamic livro) {
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
      body: FutureBuilder<List<dynamic>>(
        future: livros,
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Erro ao carregar os livros'),
            );
          } else if (snapshot.hasData) {
            final List<dynamic>? listaLivros = snapshot.data;
            return ListView.builder(
              itemCount: listaLivros?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                final livro = listaLivros?[index];
                return ListTile(
                  title: Text(livro['title'].toString()),
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
