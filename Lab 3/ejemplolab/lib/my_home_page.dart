import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'details.dart';
import 'listDetail.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String iconobased= "assets/icons/sonic.svg";
  String iconoresultado="assets/icons/sonicReinicio.svg";
  String resultado = ""; 

  void _incrementCounter() {
    setState(() {
     
      _counter++;
       if(_counter >= 15)
    {
      resultado = "Ganaste";
      iconoresultado = "assets/icons/SonicHappy.svg";
    }
    else  if(_counter == 10)
    {
      resultado = "Perdiste";
      iconoresultado = "assets/icons/sonicSad.svg";
    }
    });
  }

  void _decreaseCounter() {
    setState(() {

      _counter--;
      if(_counter >= 15)
    {
      resultado = "Ganaste";
      iconoresultado = "assets/icons/SonicHappy.svg";
    }
    else  if(_counter == 14)
    {
      resultado = "Perdiste";
      iconoresultado = "assets/icons/sonicSad.svg";
    }
    });
  }

  void _resetCounter() {
    setState(() {

      _counter = 0;
      resultado = "Empecemos de nuevo";
       iconoresultado = "assets/icons/sonicReinicio.svg";
    });

  }
  void initState() {
    super.initState();
    print('initState: Empezando Estado');
    print('initState: montado = $mounted');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies: Las Dependencias fueron cambiadas');
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget: El Widget actualizado');
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    print('setState: El estado del programa ha sido restablecido');
  }

  @override
  void deactivate() {
    print('deactivate: Un widget esta siendo removido');
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose: Eliminando esto');
    print('dispose: montado = $mounted');
  }

  @override
  void reassemble() {
    super.reassemble();
    //print('reassemble: La aplicación se reensamblor');
    print('reassemble: montado = $mounted');
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Color.fromARGB(255, 2, 36, 174),
        
        title: Text(widget.title),
      ),
      body: Center(
       child: Card(
      ///  color: Colors.blue,
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
             SvgPicture.asset(iconoresultado, height: 100, width: 100,),
            const Text(
              'Has pulsado el boton esta cantidad de veces:',
              style: TextStyle(fontFamily: "SonicFont"),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
             Text(resultado, style: TextStyle(fontFamily: "SonicFont")), 
            Row(
                
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
            onPressed: _incrementCounter,
            
            child: const Icon(Icons.plus_one),
          ),
          ElevatedButton(
            onPressed: _decreaseCounter,
            child: const Icon(Icons.minimize),
          ),
           ElevatedButton(
            onPressed: _resetCounter,
            child: SvgPicture.asset(
                                    iconobased,
                                     semanticsLabel: 'Acme Logo'
          ),
          ),
         
          ],
          
           
        )
          ],
        ),
      ),
      

      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Details())); //ir a Detail
            },
            child: const Text("Detail")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetallesLista())); //ir a lista
            },
            child: const Text("Lista"))
      ]
        );

  }
}

