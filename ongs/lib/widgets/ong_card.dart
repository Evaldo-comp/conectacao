import 'package:flutter/material.dart';
import '../model/ong.dart';

class OngCard extends StatelessWidget {
  final Ong ong;
  final VoidCallback onTap;

  const OngCard({super.key, required this.ong, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
              const SizedBox(height: 10),
              Text(
                ong.nome,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(ong.cidade, textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}

