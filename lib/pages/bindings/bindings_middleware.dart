import 'package:get/get.dart';

class BindingsMiddleware extends GetMiddleware {
  // chamado antes do buinding
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    print('onBindingsStart $bindings');
    // bindings?.add(BindingsBuilder.put(() => 'Nova string'));
    return super.onBindingsStart(bindings);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    print('onPageBuildStart $page');
    return super.onPageBuildStart(page);
  }
}
