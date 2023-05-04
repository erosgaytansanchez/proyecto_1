import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 10,
      ),
      body: const Center(
          child: Card(
        child: SizedBox(
          width: 350,
          height: 100,
          child: Text(
            'te amo juan',
            style: TextStyle(fontSize: 20),
          ),
        ),
      )),
    );
  }
}
