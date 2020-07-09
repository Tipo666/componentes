import 'package:componentes_flutter/src/providers/menu_provider.dart';
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
    // print(menuProvider.opciones);
    menuProvider.cargarData().then((opciones) {
      print('_lista');
      print(opciones);
    });

    return ListView(
      children: _listItems(),
    );
  }

  List<Widget> _listItems() {
    return [
      ListTile(
        title: Text('Hola Mundo'),
      )
    ];
  }
}
