import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Otro extends StatelessWidget {
  const Otro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          Card(
            color: Colors.teal,
            child: ListTile(
              title: Text("azucar"),
            ),
          ),
          Divider(),
          Card(
            color: Colors.teal,
            child: ListTile(
              title: Text("leche"),
            ),
          ),
          Divider(),
          Card(
            color: Colors.teal,
            child: ListTile(
              title: Text("Huevos"),
            ),
          ),
          Divider(),
          Card(
            color: Colors.teal,
            child: ListTile(
              title: Text("Frijol"),
            ),
          ),
          Divider(),
          Card(
            color: Colors.teal,
            child: ListTile(
              title: Text("Queso"),
            ),
          ),
        ],
      ),
    );
  }
}
