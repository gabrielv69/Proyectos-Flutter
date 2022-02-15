import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

//Debe ser privada
class _ContadorPageState extends State<ContadorPage> {
  //Defino a qui mis estilos

  final TextStyle estiloTexto =
      new TextStyle(fontSize: 25); //No puedo hacer dentro de
  //stateless sin el final

  int conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo de la barra1'),
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
              Text('$conteo', style: estiloTexto)
            ],
          ),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _agregar), //sin paresentesis solo referencia de agregar
      ],
    );
  }

  void _agregar() {
    setState(() {
      conteo++;
    });
  }

  void _sustraer() {
    setState(() {
      conteo--;
    });
  }

  void _reset() {
    setState(() {
      conteo = 0;
    });
  }
}
