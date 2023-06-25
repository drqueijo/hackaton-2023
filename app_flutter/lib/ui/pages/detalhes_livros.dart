import 'package:app_flutter/models/livros.dart';
import 'package:app_flutter/models/autor.dart';
import 'package:app_flutter/models/editora.dart';
import 'package:app_flutter/ui/api/api.dart';
import 'package:flutter/material.dart';

class DetalhesLivro extends StatefulWidget {
  final Livro livro;

  DetalhesLivro({required this.livro});

  @override
  _DetalhesLivroState createState() => _DetalhesLivroState();
}

class _DetalhesLivroState extends State<DetalhesLivro> {
  late Future<Autor> autorFuture;
  late Future<Editora> editoraFuture;
  late Future<Livro> livroFuture;

  @override
  void initState() {
    super.initState();
    livroFuture = fetchLivro() as Future<Livro>;
    autorFuture = fetchAutor();
    editoraFuture = fetchEditora();
  }

  Future<List<Livro>> fetchLivro() async {
  final api = ApiRemote();
  return api.getLivros();
  }

  Future<Autor> fetchAutor() async {
    final api = ApiRemote();
    return api.getAutorById(widget.livro.autorId);
  }

  Future<Editora> fetchEditora() async {
    final api = ApiRemote();
    return api.getEditoraById(widget.livro.editoraId);
  }

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
              'Título: ${widget.livro.title}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Subtítulo: ${widget.livro.subtitle}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'ID: ${widget.livro.id}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            FutureBuilder<Autor>(
              future: autorFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final autor = snapshot.data!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Autor: ${autor.name}',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Endereço do Autor: ${autor.address}',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Cidade do Autor: ${autor.city}',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'UF do Autor: ${autor.uf}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text('Erro ao carregar autor');
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            SizedBox(height: 20),
            FutureBuilder<Editora>(
              future: editoraFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final editora = snapshot.data!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Editora: ${editora.name}',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Endereço da Editora: ${editora.address}',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Cidade da Editora: ${editora.city}',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'UF da Editora: ${editora.uf}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text('Erro ao carregar editora');
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
