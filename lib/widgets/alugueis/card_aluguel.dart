﻿import 'package:connectcar/theme/cores_theme.dart';
import 'package:flutter/material.dart';

class CardAluguel extends StatelessWidget {
  final VoidCallback onPressed;
  final String clienteNome;
  final String modeloCarro;
  final String dataRetirada;
  final String dataDevolucao;

  const CardAluguel({
    super.key,
    required this.onPressed,
    required this.clienteNome,
    required this.modeloCarro,
    required this.dataRetirada,
    required this.dataDevolucao,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 4, 86, 153),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
             'Aluguel de $modeloCarro',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: CoresTheme.textoTemaEscuro,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Cliente: $clienteNome',
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '$dataRetirada - $dataDevolucao',
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
