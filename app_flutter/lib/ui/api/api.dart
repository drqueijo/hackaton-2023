import 'dart:convert';
import 'package:app_flutter/models/livros.dart';
import 'package:app_flutter/models/alunos.dart';
import 'package:app_flutter/models/login.dart';
import 'package:app_flutter/ui/api/globais.dart';
import 'package:http/http.dart' as http;
import 'globais.dart';

class ApiRemote {
  Future<List<Livro>> getLivros() async {
    final response = await http.get(Uri.parse(Globais.LinkGetLivros));
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => Livro.fromJson(e)).toList();
  }

  getStudentByRA(String ra) {}
}