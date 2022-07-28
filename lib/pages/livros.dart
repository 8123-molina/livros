import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';


class Api{
  final Dio dio = Dio();
  
  getLivros({id}) async {
    var path = {'https://www.googleapis.com/books/v1/volumes'};
    Response response = await dio.get(path);
    return response.data;
  }
}

// ignore: camel_case_types
class rstBloc{
  final _service = const Livros();
  final _controlador = BehaviorSubject();
  
  Stream get saida => _controlador.stream;
  Sink get entrada => _controlador.sink;
  
  callLivros() async {
    await _service.getLivros().then(entrada.add);
  }
  
  void dispose() {
    _controlador.close();
  }
}

class Livros extends StatefulWidget {
  const Livros({Key? key}) : super(key: key);
  

  @override
  // ignore: library_private_types_in_public_api
  _LivrosState createState() => _LivrosState();
  
  getLivros() {}
}

class _LivrosState extends State<Livros> {
  final _bloc = rstBloc();

  @override
  Widget build(BuildContext context) {
     return StreamBuilder(
      stream: _bloc.saida,
      builder: (context, snapshot) {
        return Scaffold(
          body: Center(
            child: Text("${snapshot.data}")
          )
        );
      }
    );
  }
}