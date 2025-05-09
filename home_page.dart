import 'package:flutter/material.dart';
import 'search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indiceAtual = 0;

  final List<Widget> _pages = [
    const HomeConteudo(),
    const SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
        centerTitle: true,
        title: const Text(
          "MONVies, o seu app de filmes...",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w300,
            letterSpacing: 2.0,
            fontSize: 24,
          ),
        ),
      ),
      body: _pages[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice) => setState(() => _indiceAtual = indice),
        backgroundColor: Colors.teal[200],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Busca',
          ),
        ],
      ),
    );
  }
}

class HomeConteudo extends StatelessWidget {
  const HomeConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Conteúdo Principal da Home',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}