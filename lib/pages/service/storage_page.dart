import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_dependencias/pages/service/storage_service.dart';

class StoragePage extends StatelessWidget {
  const StoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Storage service'),
      ),
      body: Center(
        child: Text(Get.find<StorageService>().getValue<String>('service')),
      ),
    );
  }
}
