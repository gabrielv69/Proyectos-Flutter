import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //Defino a qui mis estilos

  final TextStyle estiloTexto =
      new TextStyle(fontSize: 25); //No puedo hacer dentro de
  //stateless sin el final

  final int conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo de la barra'),
        centerTitle: true, //centro
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Número de Clicks:',
              style: estiloTexto,
            ),
            Text('0', style: estiloTexto)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("Imprimete");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
