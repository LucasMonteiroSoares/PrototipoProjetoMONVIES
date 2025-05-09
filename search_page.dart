import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: const Center(
        child: Text(
          'Página de Busca',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}