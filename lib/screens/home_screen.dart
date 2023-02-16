import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  final TextStyle estiloTexto = const TextStyle(
    fontSize: 25,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    int contador = 0;
    return Scaffold(
      appBar: AppBar(
      title: const Text('B&B (Contador)'),
      centerTitle: true,
        elevation: 5.2,
        backgroundColor: const Color.fromARGB(255, 49, 56, 152),
      ),
      backgroundColor: const Color.fromARGB(52, 96, 96, 96),
      body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('Numero de taps:',
           style: estiloTexto,
           ),
           Text('$contador',
            style: estiloTexto,
           ),
         ],
       ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('Presionaste el boton, el valor del contador: $contador');
          contador++;
        },
        backgroundColor: const Color.fromARGB(255, 45, 190, 200),
        foregroundColor: const Color.fromARGB(255, 33, 106, 126),
        child: const Icon(Icons.ads_click_rounded),
      ),
    );
  }
}