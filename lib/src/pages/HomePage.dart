import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import '../controller/BuscadorController.dart';
import '../controller/PesquisaController.dart';
import '../models/Post.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PesquisaController _to = PesquisaController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                // prefixIcon: const Icon(Icons.clear),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () async {
                    showSearch(context: context, delegate: BuscadorWB());
                  },
                ),
                hintText: 'Search...',
                border: InputBorder.none),
          ),
        ),
      )),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              textItem(_to.pesquisaController), ////=====>>>>> outros
              _buttonPesquisa(), ////=====>>>>> outros
              const SizedBox(
                height: 50.0,
              ),
              Container(
                child: Text('Resultados'),
              )
            ],
          ),
        ),
      )),
    );
  }

  ///////////////////////////////////////////////////////////////////////////////// Widgets

  Widget textItem(TextEditingController controller) {
    return Container(
      width: MediaQuery.of(context).size.width - 70,
      height: 55,
      child: TextFormField(
        controller: controller,
        style: const TextStyle(
          fontSize: 17,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          labelStyle: const TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 1.5,
              color: Colors.amber,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttonPesquisa() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
      child: ElevatedButton(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
          child: Text(
            'Pesquisar'.toUpperCase(),
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        onPressed: () async {
          // _to.controllerPesquisa(context);
        },
      ),
    );
  }
}
