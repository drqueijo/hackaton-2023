import 'dart:convert';
import 'package:app_flutter/models/livros.dart';
<<<<<<< HEAD
=======
import 'package:app_flutter/models/alunos.dart';
>>>>>>> 8c951d264d1584a3e3a866e3deb5bc4b5dee535b
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
<<<<<<< HEAD
=======

  getStudentByRA(String ra) {}
>>>>>>> 8c951d264d1584a3e3a866e3deb5bc4b5dee535b
}