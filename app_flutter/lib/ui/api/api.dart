import 'dart:convert';
import 'package:app_flutter/models/livros.dart';
import 'package:app_flutter/models/reservalivro.dart';
import 'package:http/http.dart' as http;
import 'globais.dart';

class ApiRemote {
  Future<List<Livro>> getLivros() async {
    final response = await http.get(Uri.parse(Globais.LinkGetLivros));
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => Livro.fromJson(e)).toList();
  }

  Future<List<ReservaLivro>> getReservasByUserId(String userId) async {
    final response = await http.get(Uri.parse('${Globais.LinkGetReserva}$userId'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final reservas = jsonData.map<ReservaLivro>((item) => ReservaLivro.fromJson(item)).toList();
      return reservas;
    } else {
      throw Exception('Falha ao carregar as reservas');
    }
  }
}
