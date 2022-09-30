import 'package:get/get.dart';
import 'package:jornadagetx_dependencias/pages/bindings/initial/auth_model.dart';

class BindingsInitial extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthModel(name: 'MC', email: 'mc@gmail.com'));
  }
}
