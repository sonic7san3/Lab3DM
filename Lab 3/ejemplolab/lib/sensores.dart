import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sensores extends StatelessWidget {
  const Sensores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sensores'),
      ),
      body: Center(
        child: Text(
          'Pantalla de los Sensores',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
