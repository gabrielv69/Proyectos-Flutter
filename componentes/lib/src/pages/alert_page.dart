import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blueAccent,
          textColor: Colors.white70,
          shape: StadiumBorder(),
          child: Text('Mostrar Alerta'),
          onPressed: _mostrarAlerta(context),
        ),
      ),
      //Boton BACK
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.backpack),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: Text('titulo Dialog'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Contenido de la caja de alerta'),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              FlatButton(onPressed: () {}, child: Text('Aceptar')),
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancelar'))
            ],
          );
        });
  }
}
