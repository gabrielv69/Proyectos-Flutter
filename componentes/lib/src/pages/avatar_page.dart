import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/originals/0f/06/b2/0f06b2918252fd780922013aa231d2ca.jpg'),
          ),
          Container(
            margin: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://media.revistagq.com/photos/5f8959bd54567c4e16ec6a46/4:3/w_960,h_720,c_limit/goku-futbolista.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 100),
        ),
      ),
    );
  }
}
