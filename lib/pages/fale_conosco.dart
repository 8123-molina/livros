import 'package:flutter/material.dart';

class FaleConosco extends StatefulWidget {
  const FaleConosco({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FaleConoscoState createState() => _FaleConoscoState();
}

class _FaleConoscoState extends State<FaleConosco> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(
        child: Text('Fale Conosco'),
      ),
    );
  }
}