import 'package:flutter/material.dart';

class QuemSomos extends StatefulWidget {
  const QuemSomos({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _QuemSomosState createState() => _QuemSomosState();
}

class _QuemSomosState extends State<QuemSomos> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Quem somos'),
      ),
    );
  }
}