
import 'dart:convert';
import 'dart:html';

import 'package:app_flutter/models/livros.dart';
import 'package:flutter/material.dart';
import 'package:app_flutter/ui/api/http_request.dart';
import 'package:app_flutter/models/login.dart';

import 'globais.dart';
import 'package:http/http.dart' as http;

class ApiRemote {
  final _request = HttpRequest();

  Future<List> postLogin({
    required String ra
  }) async {
    var body = jsonEncode({
      'ra': ra,
    });
    var response = await _request.getJson(url: Globais.linkGetLogin + ra,);

    return _populateLogin(response);
  }

  List<dynamic> _populateLogin(List<dynamic> json) {
    return json.map((e) => Login.fromJson(e)).toList();
  }  


  Future<List> getLivros() 
  async{
    var response = await _request.getJson(url: Globais.LinkGetLivros);

    return _populaLivros(response);
  }

  List<dynamic> _populaLivros(List<dynamic> json){
    return json.map((e) => Livros.fromJson(e)).toList();
  }


 /*  Future<Livros> getDetLivros({
    required String idLivros
  }) async{
    var response = await _request.getJson(url: Globais.LinkGetLivros + idLivros);

   // return _populaDetLivros(response);
  }

  List<dynamic> _populaDetLivros(List<dynamic> json){
    return json.map((e) => Livros.fromJson(e)).toList();
  }
 */
  
}



