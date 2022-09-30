import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_dependencias/pages/basico/basico_home_page.dart';
import 'package:jornadagetx_dependencias/pages/bindings/bindings_home.dart';
import 'package:jornadagetx_dependencias/pages/bindings/initial/bindings_initial.dart';
import 'package:jornadagetx_dependencias/pages/bindings/bindings_middleware.dart';
import 'package:jornadagetx_dependencias/pages/bindings/bindings_start.dart';
import 'package:jornadagetx_dependencias/pages/bindings/initial/bindings_initial_home.dart';
import 'package:jornadagetx_dependencias/pages/home_page.dart';
import 'package:jornadagetx_dependencias/pages/metodos/create/create_home_page.dart';
import 'package:jornadagetx_dependencias/pages/metodos/lazy_put/lazy_put_page.dart';
import 'package:jornadagetx_dependencias/pages/metodos/metodos_home_page.dart';
import 'package:jornadagetx_dependencias/pages/metodos/put/put_page.dart';
import 'package:jornadagetx_dependencias/pages/metodos/putAsync/put_async_page.dart';
import 'package:jornadagetx_dependencias/pages/metodos/update_delete/update_home_page.dart';
import 'package:jornadagetx_dependencias/pages/service/storage_page.dart';
import 'package:jornadagetx_dependencias/pages/service/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  SharedPreferences.setMockInitialValues({});
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      initialBinding: BindingsInitial(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/basico',
          page: () => BasicoHomePage(),
        ),
        GetPage(
          name: '/metodos',
          page: () => const MetodosHomePage(),
          children: [
            GetPage(
              name: '/put',
              page: () => const PutPage(),
            ),
            GetPage(
              name: '/lazyPut',
              page: () => LazyPutPage(),
            ),
            GetPage(
              name: '/putAsync',
              page: () => PutAsyncPage(),
            ),
            GetPage(
              name: '/create',
              page: () => CreateHomePage(),
            ),
            GetPage(
              name: '/update',
              page: () => UpdateHomePage(),
            ),
          ],
        ),
        GetPage(
          name: '/bindings',
          page: () => const BindingsHome(),
          middlewares: [
            BindingsMiddleware(),
          ],
          binding: BindingsStart(),
        ),
        GetPage(
          name: '/bindings_initial',
          page: () => const BindingsInitialHome(),
        ),
        GetPage(
          name: '/services',
          page: () => const StoragePage(),
        )
      ],
    );
  }
}
