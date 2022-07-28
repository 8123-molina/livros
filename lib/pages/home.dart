
import 'package:flutter/material.dart';
import 'package:livros/pages/pedidos.dart';
import '../curved_navigation_bar.dart';
import 'quem_somos.dart';
import 'favoritos.dart';
import 'fale_conosco.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  int index = 2;

  final screens = [
    const Favoritos(),
    const HomePage(),
    const Pedidos(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.star, size: 30),
      const Icon(Icons.home, size: 30),
      const Icon(Icons.add, size: 30, semanticLabel: "pedidos"),
    ];

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        height: 70.0,
        items: items,
        //color: Colors.white,
        // buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        //animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) => setState(() => this.index = index),
      ),
      body: screens[index],

      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
                leading: const Icon(Icons.business),
                title: const Text("Quem Somos"),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const QuemSomos()));
                }),
            ListTile(
                leading: const Icon(Icons.phone),
                title: const Text("Fale conosco"),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const FaleConosco()));
                }),
            ListTile(
                leading: const Icon(Icons.phone),
                title: const Text("Favoritos"),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const Favoritos()));
                }),
          ],
        ),
      ),
      /*      floatingActionButton: FloatingActionButton(
          alignment: Alignment.topCenter,
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.list),
          backgroundColor: Colors.amberAccent,
        ),*/
    );
  }
}
