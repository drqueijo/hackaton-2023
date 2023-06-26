import 'package:app_flutter/helpers/login_helper.dart';
import 'package:app_flutter/models/login.dart';
import 'package:app_flutter/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../api/globais.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const routeName = '/loginPage';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _helper =LoginHelper();
  TextEditingController _raController = TextEditingController();
  bool _isLoading = false;
  bool logado = false;

  Future<Login> logar(String ra) async {
    var response = await http.get(
      Uri.parse(Globais.linkGetLogin + ra),
    );
    if (response.statusCode == 200) {
      var decodedJson = json.decode(response.body);
      final e = populateUser(decodedJson);
      final dados = Login(id: e.id, ra: e.ra,); 
      _helper.inserir(dados);
      setState(() {
        logado = true;
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          (route) => false,
        );
        var decodedJson = json.decode(response.body);
        populateUser(decodedJson);
      });
    } else {
      setState(() {
        logado = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('RA inválido ou não cadastrado.'),
        ),
      );
    }

    var decodedJson = json.decode(response.body);
    return populateUser(decodedJson);
  }

  Login populateUser(Map<String, dynamic> json) {
    print(json);
    Login login = Login.fromJson(json);
    login.id = json['id'];
    login.ra = json['ra'];
    return login;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remover o botão de voltar
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _raController,
              decoration: const InputDecoration(
                labelText: 'RA',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                logar(_raController.text);
              },
              child: _isLoading
                  ? const CircularProgressIndicator()
                  : const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
