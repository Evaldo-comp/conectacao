import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/SobreNosPage.dart';


void main() {
  runApp(const OngApp());
}

// Adicione também a nova tela ao final do arquivo:


class OngApp extends StatelessWidget {
  const OngApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ConectAção',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData.dark(),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              InkWell(
                borderRadius: BorderRadius.circular(32),
                child: Material(
                  elevation: 8,
                  borderRadius: BorderRadius.circular(32),
                  shadowColor: Colors.black54,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Image.asset(
                      'assets/images/logo.jpeg',
                      width: 220,
                      height: 220,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const SizedBox(height: 60),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    elevation: 8,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    shadowColor: const Color.fromARGB(136, 133, 235, 172),
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => HomePage()),
                    );
                  },
                  child: const Text('Entrar'),
                ),
              ),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SobreNosPage()),
                  );
                },
                child: const Text(
                  'Sobre nós',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              const SizedBox(height: 80),
              // Footer centralizado
              const Text(
                'Projeto FECTEC Maria Carmem 2025',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
