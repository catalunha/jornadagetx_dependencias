import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_dependencias/pages/bindings/bindings_controller.dart';
import 'package:jornadagetx_dependencias/pages/bindings/bindings_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.toNamed('/basico');
                Navigator.of(context).pushNamed('/basico');
              },
              child: const Text('Básico'),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.toNamed('/basico');
                Navigator.of(context).pushNamed('/metodos');
              },
              child: const Text('Metodos'),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.toNamed('/basico');
                Navigator.of(context).pushNamed('/bindings');
              },
              child: const Text('Bindings'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const BindingsHome(),
                    binding: BindingsBuilder.put(() => BindingsController(
                        nome: 'Bindings sem rota nomeadas')));
              },
              child: const Text('Bindings sem rotas nomeadas'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/bindings_initial');
              },
              child: const Text('Bindings intial'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/services');
              },
              child: const Text('GetXServices'),
            ),
          ],
        ),
      ),
    );
  }
}
