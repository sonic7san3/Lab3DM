import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String iconobased= "assets/icons/sonic.svg";
  String resultado = ""; 

  void _incrementCounter() {
    setState(() {
     
      _counter++;
       if(_counter >= 15)
    {
      resultado = "Ganaste";
    }
    else  if(_counter == 10)
    {
      resultado = "Perdiste";
    }
    });
  }

  void _decreaseCounter() {
    setState(() {

      _counter--;
      if(_counter >= 15)
    {
      resultado = "Ganaste";
    }
    else  if(_counter == 14)
    {
      resultado = "Perdiste";
    }
    });
  }

  void _resetCounter() {
    setState(() {

      _counter = 0;
      resultado = "Empecemos de nuevo";
    });

    void _nombreResultado()
    {
       
   
    }
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Color.fromARGB(255, 2, 36, 174),
        
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Has pulsado el boton esta cantidad de veces:',
              style: TextStyle(fontFamily: "SonicFont"),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
             Text(resultado, style: TextStyle(fontFamily: "SonicFont")), 
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Aumentar',
        child: const Icon(Icons.plus_one),
      ), 
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: [
        Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
          FloatingActionButton(
            onPressed: _decreaseCounter,
            child: const Icon(Icons.minimize),
             tooltip: 'Disminuir'
          ),
           FloatingActionButton(
            onPressed: _resetCounter,
            child: SvgPicture.asset(
                                    iconobased,
                                     semanticsLabel: 'Acme Logo'
          ),
             tooltip: 'Reiniciar'
          ),
          ],
          
           
        )

     ],
  
        );

  }
}
