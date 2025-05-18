import 'package:flutter/material.dart';
// import '../model/ong.dart';

class SobreNosPage extends StatelessWidget {
  const SobreNosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre nós'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            'Esta é a página Sobre Nós.\n\n'
            'Aqui você pode adicionar informações sobre o aplicativo, '
            'a equipe de desenvolvimento, missão, visão, etc.',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
