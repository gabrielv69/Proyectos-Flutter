import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [], //opcional
      //El contexto es una referencia al contexto real
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('snapshot');
        print(snapshot.data);
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];
    data!.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.amber,
        ),
        onTap: () {
          //CAMBIAR PAGINA
          //Forma Tradicional
          // final route = MaterialPageRoute(builder: (context) => AlertPage());
          //Navigator.push(context, route);

          //Forma Corta
          Navigator.pushNamed(context, element['ruta']);
        },
      );

      opciones
        ..add(widgetTemp)
        ..add(Divider());
    });
    return opciones;
  }
}
