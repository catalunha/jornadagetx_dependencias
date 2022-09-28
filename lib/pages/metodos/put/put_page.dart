import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_dependencias/pages/metodos/put/put_controller.dart';
import 'package:jornadagetx_dependencias/pages/metodos/put/put_controller_permanent.dart';
import 'package:jornadagetx_dependencias/pages/metodos/put/put_controller_tag.dart';

class PutPage extends StatefulWidget {
  const PutPage({Key? key}) : super(key: key);

  @override
  State<PutPage> createState() => _PutPageState();
}

class _PutPageState extends State<PutPage> {
  final controller = Get.put(PutController());
  final controller2 = Get.put(PutController());
  final controllerPermanent = Get.put(PutControllerPermanet(), permanent: true);
  final controllerTagX = Get.put(PutControllerTag(tag: 'TagX'), tag: 'tagX');
  final controllerTagY = Get.put(PutControllerTag(tag: 'TagY'), tag: 'tagY');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Put'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Time put          : ${controller.timestamp}'),
            Text('Time put permanent: ${controllerPermanent.timestamp}'),
            const WidgetInterno(),
          ],
        ),
      ),
    );
  }
}

class WidgetInterno extends StatelessWidget {
  const WidgetInterno({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(Get.find<PutControllerTag>(tag: 'tagX').tag)],
    );
  }
}
