import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/Post.dart';

class PesquisaController {
  BuildContext? context;
  Future? int(BuildContext context) {
    this.context = context;
  }

  final TextEditingController pesquisaController = TextEditingController();

  void controllerPesquisa(BuildContext context) async {
    try {
      final snackbar = (SnackBar(
        content: Column(children: [Text("welcome......")]),
        backgroundColor: Colors.green,
      ));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      print('exito');
      // Navigator.pushAndRemoveUntil(
      //     context,
      //     MaterialPageRoute(builder: (builder) => HomePage()),
      //     (route) => false);
    } catch (e) {
      print("Error: ${e.toString()}");
      final snackbar = (SnackBar(
        content: Text("Falha ao realizar pesquisa"),
        backgroundColor: Colors.green,
      ));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
    FocusScope.of(context).requestFocus(new FocusNode());
  }
}
