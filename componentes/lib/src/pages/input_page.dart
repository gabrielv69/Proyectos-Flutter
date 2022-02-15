import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "";
  String _correo = "";
  String _fecha = "";
  String _opcionSeleccionada = "";
  List<String> _poderes = ['volar', 'fuerza', 'matar', 'correr'];
  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> getOpciones() {
    List<DropdownMenuItem<String>> lista = [];
    _poderes.forEach((element) {
      lista.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      )); //Child lo que muestro y valor el valor
    });
    return lista;
  }

  Widget _crearDropDown() {
    return DropdownButton<String>(
      value: _opcionSeleccionada,
      items: getOpciones(),
      onChanged: (opt) {
        setState(() {
          _opcionSeleccionada = opt!;
        });
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          hintText: 'Fecha de nacimiento',
          labelText: 'Fecha',
          suffixIcon: Icon(Icons.calendar_today),
          icon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(
            new FocusNode()); //Quito que se abra el teclado (le quito el foco de atencion)
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2020),
        lastDate: new DateTime(2022),
        locale: Locale('es', 'ES'));

    if (pickedDate != null) {
      setState(() {
        _fecha = pickedDate.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          counter: Text('Letras ${_correo.length} '),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock),
          icon: Icon(Icons.password)),
      onChanged: (valor) {
        setState(() {
          _correo = valor;
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          counter: Text('Letras ${_correo.length} '),
          hintText: 'Email',
          labelText: 'Email',
          helperText: 'Ponga el email plox ',
          suffixIcon: Icon(Icons.email),
          icon: Icon(Icons.email)),
      onChanged: (valor) {
        setState(() {
          _correo = valor;
        });
      },
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          counter: Text('Letras ${_nombre.length} '),
          hintText: 'Nombre',
          labelText: 'Nombre',
          helperText: 'Ponga el nombre plox ',
          suffixIcon: Icon(Icons.accessible_rounded),
          icon: Icon(Icons.account_balance)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Correo: $_correo'),
      leading: Text('Poder: $_opcionSeleccionada'),
    );
  }
}
