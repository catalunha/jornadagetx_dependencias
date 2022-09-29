import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_dependencias/pages/metodos/update_delete/delete_controller.dart';
import 'package:jornadagetx_dependencias/pages/metodos/update_delete/update_controller.dart';

class UpdateHomePage extends StatefulWidget {
  UpdateHomePage({Key? key}) : super(key: key) {
    Get.put(UpdateController(nome: 'Nome inicial'));
    Get.put(DeleteController(nome: 'Nome inicial-delete'), permanent: true);
  }

  @override
  State<UpdateHomePage> createState() => _UpdateHomePageState();
}

class _UpdateHomePageState extends State<UpdateHomePage> {
  String nome = '...';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: $nome'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nome = Get.find<UpdateController>().nome;
                });
              },
              child: const Text('Buscar nome'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.replace(UpdateController(nome: 'Nome alterado'));
              },
              child: const Text('Alterando instancia'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.delete<UpdateController>();
              },
              child: const Text('Deletando instancia'),
            )
          ],
        ),
      ),
    );
  }
}
