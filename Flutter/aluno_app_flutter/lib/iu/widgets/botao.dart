import 'package:flutter/material.dart';

class botao extends StatelessWidget {
  final Widget titulo;
  final VoidCallback clique;

  const botao(this.titulo, this.clique, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: clique,
      child: titulo
    );
  }
}