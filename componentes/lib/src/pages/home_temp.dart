import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['a', 'v', 'c', 'd', 'e', 'f', 'g', 'h'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItemsCorto()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];

    for (var item in opciones) {
      final tempWidget = ListTile(
        title: Text(item),
      );
      lista
        ..add(tempWidget)
        ..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return opciones
        .map((item) => Column(
              children: [
                ListTile(
                  title: Text(item + '!'),
                  subtitle: Text("subti"),
                  leading: Icon(Icons.ac_unit),
                  trailing: Icon(Icons.keyboard_arrow_down),
                  onTap: () {},
                ),
                Divider()
              ],
            ))
        .toList();
  }
}
