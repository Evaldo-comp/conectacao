import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/ong.dart';

class OngDetailPage extends StatelessWidget {
  final Ong ong;

  const OngDetailPage({super.key, required this.ong});

  // Função utilitária para abrir links
  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Defina os links individualmente aqui:
    final String siteUrlZoe =
        'https://seusite.com'; // Coloque o link do site da ONG
    final String emailUrlZoe =
        'mailto:seuemail@dominio.com'; // Coloque o email da ONG
    final String instagramUrlZoe =
        'https://www.instagram.com/ongzoe.oficial/'; // Coloque o link do Instagram da ONG

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
                    child: Image.asset(ong.logoPath, fit: BoxFit.cover),
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
                        // Ícone do site
                        GestureDetector(
                          onTap: () {
                            final site = ong.contato['site'];
                            if (site != null && site.isNotEmpty) {
                              _launchUrl(site);
                            }
                          },
                          child: Container(
                            width: 48,
                            height: 48,
                            margin: const EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.green,
                                width: 1.5,
                              ),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/icons/site.jpg',
                                width: 28,
                                height: 28,
                              ),
                            ),
                          ),
                        ),
                        // Ícone do email
                        GestureDetector(
                          onTap: () {
                            final email = ong.contato['email'];
                            if (email != null && email.isNotEmpty) {
                              _launchUrl('mailto:$email');
                            }
                          },
                          child: Container(
                            width: 48,
                            height: 48,
                            margin: const EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.green,
                                width: 1.5,
                              ),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/icons/email.png',
                                width: 28,
                                height: 28,
                              ),
                            ),
                          ),
                        ),
                        // Ícone do Instagram
                        GestureDetector(
                          onTap: () {
                            final insta = ong.contato['instagram'];
                            if (insta != null && insta.isNotEmpty) {
                              final url =
                                  insta.startsWith('http')
                                      ? insta
                                      : 'https://instagram.com/${insta.replaceAll('@', '')}';
                              _launchUrl(url);
                            }
                          },
                          child: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.green,
                                width: 1.5,
                              ),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/icons/insta.png',
                                width: 28,
                                height: 28,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
