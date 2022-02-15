import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slide'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }

  Widget _crearCheckBox() {
    /*
    return Checkbox(
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor!;
          });
        });*/

    return CheckboxListTile(
        title: Text('Bloquear Slide'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor!;
          });
        });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/736x/b3/f5/65/b3f565799221d4b8f778655bef3b511f.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigo,
        label: 'TAMANIO',
        // divisions: 20,
        value: _valorSlider,
        min: 10,
        max: 400,
        onChanged: (_bloquearCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }
}
