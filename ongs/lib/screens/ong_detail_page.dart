import 'package:flutter/material.dart';
import '../model/ong.dart';

class OngDetailPage extends StatelessWidget {
  final Ong ong;

  const OngDetailPage({super.key, required this.ong});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      appBar: AppBar(title: Text(ong.nome), backgroundColor: Colors.green[900]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo centralizada e circular
              Center(
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green[700],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      ong.logoPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Card de detalhes principais
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5DC), // cor pastel/bege
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ong.nome,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      ong.descricao,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.green,
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          ong.cidade,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // Card de contatos e redes sociais
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Contatos e Redes Sociais',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Linha de campos centralizada para inserir links das redes sociais
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Campo 1: Site
                        Container(
                          width: 48,
                          height: 48,
                          margin: const EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.green, width: 1.5),
                          ),
                          child: Center(
                            child: Image.asset(
                              ong.siteIcon,
                              width: 28,
                              height: 28,
                            ),
                          ),
                        ),
                        // Campo 2: Email
                        Container(
                          width: 48,
                          height: 48,
                          margin: const EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.green, width: 1.5),
                          ),
                          child: Center(
                            child: Image.asset(
                              ong.emailIcon,
                              width: 28,
                              height: 28,
                            ),
                          ),
                        ),
                        // Campo 3: Instagram
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.green, width: 1.5),
                          ),
                          child: Center(
                            child: Image.asset(
                              ong.instaIcon,
                              width: 28,
                              height: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Adicione aqui outros detalhes de contato se desejar
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
