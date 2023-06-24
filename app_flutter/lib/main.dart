import 'package:app_flutter/ui/pages/home_page.dart';
import 'package:app_flutter/ui/pages/loginPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const  MaterialApp(
    title: 'Biblioteca UniAlfa',
    debugShowCheckedModeBanner: false,
    home: NavigationWidget(),
  ));
}

class NavigationWidget extends StatefulWidget {
  const NavigationWidget ({Key? key});


  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Navegação',
      initialRoute: LoginPage.routeName,
      routes: {
        '/': (context) => HomeScreen(),
        LoginPage.routeName: (context) => LoginPage(),
        ListaLivros.routeName: (context) => ListaLivros(),
        LivrosReservados.routeName: (context) => LivrosReservados(),
        DetalhesAlunos.routeName:(context) => DetalhesAlunos(),
      },
    );
  }
}
