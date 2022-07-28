import 'package:flutter/material.dart';

class Pedidos extends StatefulWidget {
  const Pedidos({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PedidosState createState() => _PedidosState();
}

class _PedidosState extends State<Pedidos> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(
        child: Text('Pedidos de inserção de livros'),
      ),
    );
  }
}