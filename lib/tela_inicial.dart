import 'package:flutter/material.dart';
import 'package:rs2xiaomi/estilo.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StyleR27.Abar1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tela Inicial'),
            ElevatedButton(onPressed: (){}, child: const Text('')),
          ],
        ),
      ),
    );
  }
}