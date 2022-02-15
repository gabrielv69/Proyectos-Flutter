import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.5, //aumento la sombra
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Tituloooo'),
            subtitle: Text('Descripciooooooooooooooooooooooonmmmmmmmmmm'),
          ),
          Row(
            //ponerlo a la derecha
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('ok'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          //me permite poner imagen mientras se carga la original
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://siaguanta.com/wp-content/uploads/2020/05/que-es-wallpaper1.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          // Image(
          //  image: NetworkImage(
          //      'https://siaguanta.com/wp-content/uploads/2020/05/que-es-wallpaper1.jpg'),
          // ),
          Container(padding: EdgeInsets.all(10), child: Text('No c que poner '))
        ],
      ),
    );

/*
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), child: Card,
      ),
    );
*/
  }
}
