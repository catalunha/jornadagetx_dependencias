import 'package:flutter/material.dart';

class MetodosHomePage extends StatelessWidget {
  const MetodosHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metodos Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.toNamed('/metodos/put');
                Navigator.of(context).pushNamed('/metodos/put');
              },
              child: const Text('Put'),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.toNamed('/metodos/lazyPut');
                Navigator.of(context).pushNamed('/metodos/lazyPut');
              },
              child: const Text('Lazy Put'),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.toNamed('/metodos/lazyPut');
                Navigator.of(context).pushNamed('/metodos/putAsync');
              },
              child: const Text('putAsync'),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.toNamed('/metodos/lazyPut');
                Navigator.of(context).pushNamed('/metodos/create');
              },
              child: const Text('create'),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.toNamed('/metodos/lazyPut');
                Navigator.of(context).pushNamed('/metodos/update');
              },
              child: const Text('update'),
            ),
          ],
        ),
      ),
    );
  }
}
