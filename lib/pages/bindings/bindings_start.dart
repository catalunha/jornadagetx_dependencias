import 'package:get/get.dart';
import 'package:jornadagetx_dependencias/pages/bindings/bindings_controller.dart';

class BindingsStart extends Bindings {
  BindingsStart() {
    print('BindingsStart construtor');
  }
  @override
  void dependencies() {
    print('BindingsStart dependencies');

    Get.put(BindingsController(nome: 'Bindings de extends Bindings'));
  }
}
