import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_dependencias/pages/basico/basico_home_page.dart';
import 'package:jornadagetx_dependencias/pages/bindings/bindings_home.dart';
import 'package:jornadagetx_dependencias/pages/bindings/bindings_start.dart';
import 'package:jornadagetx_dependencias/pages/home_page.dart';
import 'package:jornadagetx_dependencias/pages/metodos/create/create_home_page.dart';
import 'package:jornadagetx_dependencias/pages/metodos/lazy_put/lazy_put_page.dart';
import 'package:jornadagetx_dependencias/pages/metodos/metodos_home_page.dart';
import 'package:jornadagetx_dependencias/pages/metodos/put/put_page.dart';
import 'package:jornadagetx_dependencias/pages/metodos/putAsync/put_async_page.dart';
import 'package:jornadagetx_dependencias/pages/metodos/update_delete/update_home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  SharedPreferences.setMockInitialValues({});

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
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
          binding: BindingsStart(),
        )
      ],
    );
  }
}
