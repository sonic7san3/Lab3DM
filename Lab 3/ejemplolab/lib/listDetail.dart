import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetallesLista extends StatelessWidget {
  const DetallesLista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: Center(
        //Lista
        child: ListView(
          children: <Widget>[
            //Elementos de lista se usan con container
            Container(
                height: 55,
                color: Color.fromARGB(255, 207, 1, 1),
                child: const Center(
                  child: Text("Objeto 1", style: TextStyle(fontFamily: "SonicFont")),
                )),
            Container(
                height: 55,
                color: Color.fromARGB(255, 207, 1, 1),
                child: const Center(
                  child: Text("Objeto 2",  style: TextStyle(fontFamily: "SonicFont")),
                )),
            Container(
                height: 55,
                color: Color.fromARGB(255, 207, 1, 1),
                child: const Center(
                  child: Text("Objeto 3",  style: TextStyle(fontFamily: "SonicFont")),
                )
                ), 
                ElevatedButton(onPressed: () {
              Navigator.pop(context); //regresar
              },
            child: const Text("Volver"))
          ],
        ),
      ),
      
    );
  }
}