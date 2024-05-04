import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Details extends StatelessWidget {
const Details({super.key});
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Color.fromARGB(255, 2, 36, 174),
        
        title: Text("Detalles"),
      ),
      body: Center(
      child:  Row(
                
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Detalles funcionando", style: TextStyle(fontFamily: "SonicFont")),
            
          ], 
                      )
        
        ),
      );
  }
}
