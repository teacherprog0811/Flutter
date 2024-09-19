// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          actions: [
            PopupMenuButton<int>(
                onSelected: ((item) => handleClick(item)),
                itemBuilder: (context) => [
                      const PopupMenuItem<int>(value: 0, child: Text('Perfil')),
                      const PopupMenuItem<int>(value: 1, child: Text('Logout')),
                    ])
          ],
          title: const Text('Registro de clientes'),
        ),
        body: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: 'Nombre:'),
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Apellido:'),
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Direccion:'),
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Telefono:'),
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Email:'),
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Edad:'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Registrar'),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        )));
  }

  void handleClick(int item) {
    switch (item) {
      case 0:
        break;
      case 1:
        break;
    }
  }
}
