import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}
