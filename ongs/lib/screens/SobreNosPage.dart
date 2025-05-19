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
            'Sobre Nois!\n\n'
            'O ConctAção foi idealizado com uma platafroma voltada a facilitar o engajamento com uma ou mais organizaçãoes, promovendo a colaboração para a construção  de um futuro mais promissor. Neste ambiente, é possivel encontrar instituições dedicadas a diversas áreas de atuação, incluindo os campos social, ambiental, cultural, humanitário, entre outros.',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
