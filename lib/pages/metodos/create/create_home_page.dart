import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_dependencias/pages/metodos/create/create_controller.dart';

class CreateHomePage extends StatefulWidget {
  CreateHomePage({Key? key}) : super(key: key) {
    print('CreateHomePage');
    Get.create(() => CreateController());
    Get.put(CreateController(), tag: 'put');
  }

  @override
  State<CreateHomePage> createState() => _CreateHomePageState();
}

class _CreateHomePageState extends State<CreateHomePage> {
  String datetime = '...';
  String datetimePut = '...';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('datetime: $datetime'),
            Text('datetimePut: $datetimePut'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  datetime = Get.find<CreateController>().datetime;
                  datetimePut = Get.find<CreateController>(tag: 'put').datetime;
                });
              },
              child: const Text('Buscar nome'),
            )
          ],
        ),
      ),
    );
  }
}
