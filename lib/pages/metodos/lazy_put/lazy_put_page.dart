import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_dependencias/pages/metodos/lazy_put/lazy_put_controller.dart';
import 'package:jornadagetx_dependencias/pages/metodos/lazy_put/lazy_put_fenix_controller.dart';

class LazyPutPage extends StatefulWidget {
  LazyPutPage({Key? key}) : super(key: key) {
    Get.lazyPut(() => LazyPutController());
    Get.lazyPut(() => LazyPutFenixController(), fenix: true);
    // Com lazyPut e fenix o GetX.
    // Mata a instancia da classe.
    // Porem ele mantem a fabrica ativa.
    // Podendo acessar a classe de qq lugar
  }

  @override
  State<LazyPutPage> createState() => _LazyPutPageState();
}

class _LazyPutPageState extends State<LazyPutPage> {
  String nome = '...';
  String nomeFenix = '...';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lazy Put Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('nome: $nome'),
            Text('nomeFenix: $nomeFenix'),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                setState(() {
                  nome = controller.nome;
                });
              },
              child: const Text('Buscar nome'),
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutController>();

                controller.nome = 'Jesus é bom';
              },
              child: const Text('Alterar nome'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutFenixController>();
                setState(() {
                  nome = controller.nome;
                });
              },
              child: const Text('Buscar nome Fenix'),
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutFenixController>();

                controller.nome = 'Jesus é bom. Fenix';
              },
              child: const Text('Alterar nome Fenix'),
            )
          ],
        ),
      ),
    );
  }
}
