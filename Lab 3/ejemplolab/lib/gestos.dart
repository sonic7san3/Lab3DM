import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Gestos extends StatelessWidget {
  const Gestos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestos'),
      ),
      body: Center(
        child: Text(
          'Pantalla de los Gestos',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}