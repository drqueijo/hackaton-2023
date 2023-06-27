import 'package:app_flutter/ui/pages/lista_livros.dart';
import 'package:app_flutter/ui/pages/livros_reservados.dart';
import 'package:app_flutter/ui/pages/detalhes_alunos.dart';
import 'package:app_flutter/ui/pages/loginPage.dart';
import 'package:app_flutter/ui/widgets/global.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late GlobalData globalData;
  String login = '';

  @override
  void initState() {
    super.initState();
    globalData = Provider.of<GlobalData>(context, listen: false);
    login = globalData.login; // Initialize globalData
  }

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
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ListaLivros.routeName);
              },
              child: Image.asset(
                'imgs/1.png',
                width: 300,
                height: 100,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, LivrosReservados.routeName);
              },
              child: Image.asset(
                'imgs/2.png',
                width: 300,
                height: 100,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DetalhesAluno.routeName);
              },
              child: Image.asset(
                'imgs/3.png',
                width: 300,
                height: 100,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(
              context, LoginPage.routeName); // Navegar para a tela de login
        },
        child: Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .startFloat, // Posicionamento no canto inferior esquerdo
    );
  }
}
