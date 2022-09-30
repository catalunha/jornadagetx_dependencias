import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_dependencias/pages/bindings/initial/auth_model.dart';

class BindingsInitialHome extends StatelessWidget {
  const BindingsInitialHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Initial binding home'),
        ),
        body: Center(
          child: Text(Get.find<AuthModel>().toString()),
        ));
  }
}
