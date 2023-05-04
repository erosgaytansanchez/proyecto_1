import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intento/perfil.dart';
import 'package:intento/otro.dart';
import 'package:intento/pest.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Code Sample';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      routes: {
        'perfil': (context) => Perfil(),
        'home': (context) => MyStatefulWidget(),
        'Otro': (context) => Otro(),
        'Pest': (context) => Pest(),
      },
      initialRoute: 'home',
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proyecto'),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 10,
        leading: Icon(Icons.home),
      ),
      body: Center(child: Text('Necesitas $_count abrazos.')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
                title: Text('perfil'),
                leading: Icon(Icons.account_circle),
                onTap: () {
                  Navigator.pushNamed(context, 'perfil');
                }),
            Divider(),
            ListTile(
                title: Text('Otro'),
                leading: Icon(Icons.all_inclusive),
                onTap: () {
                  Navigator.pushNamed(context, 'Otro');
                }),
            Divider(),
            ListTile(
                title: Text('Pest'),
                leading: Icon(Icons.account_balance_wallet_rounded),
                onTap: () {
                  Navigator.pushNamed(context, 'Pest');
                }),
          ],
        ),
      ),
    );
  }
}
