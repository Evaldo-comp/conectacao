import 'package:flutter/material.dart';
import '../data/ongs_data.dart';
import 'package:ongs/screens/ong_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ONGs Ambientais',
          style: TextStyle(color: Color.fromARGB(255, 225, 212, 164)),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: ongs.length,
              itemBuilder: (context, index) {
                final ong = ongs[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(32),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OngDetailPage(ong: ong),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green[700], // Mesma cor do retângulo
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                offset: Offset(2, 2),
                              ),
                            ],
                            border: Border.all(
                              color: Colors.green[700]!, // Mesma cor do retângulo
                              width: 4,
                            ),
                          ),
                          child: ClipOval(
                            child: Container(
                              color: Colors.green[700], // Fundo igual ao retângulo
                              child: Image.asset(
                                ong.logoPath,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        // Retângulo conectado à elipse e ocupando o restante da tela
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                            decoration: BoxDecoration(
                              color: Colors.green[700],
                              borderRadius: const BorderRadius.horizontal(
                                right: Radius.circular(32),
                                left: Radius.circular(32), // Agora ambos os lados são arredondados
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 8,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: Text(
                              ong.nome,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Footer
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Projeto FECTEC Maria Carmem 2025',
              style: TextStyle(
                color: Colors.green[900],
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
