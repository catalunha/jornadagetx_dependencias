import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_dependencias/pages/bindings/bindings_controller.dart';

class BindingsHome extends StatelessWidget {
  const BindingsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('BindingsHome build');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bindings Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.find<BindingsController>().nome),
            // Text(Get.find<String>()),
          ],
        ),
      ),
    );
  }
}
