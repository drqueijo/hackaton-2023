import 'package:app_flutter/ui/pages/loginPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    title: 'Biblioteca UniAlfa',
    debugShowCheckedModeBanner: false,
    home: Loginpage(title: '',),
  ));
}