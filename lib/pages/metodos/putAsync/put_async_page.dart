import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PutAsyncPage extends StatefulWidget {
  PutAsyncPage({Key? key}) : super(key: key) {
    Get.putAsync(() async {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('nome', 'putAsync example');
      return prefs;
    });
  }

  @override
  State<PutAsyncPage> createState() => _PutAsyncPageState();
}

class _PutAsyncPageState extends State<PutAsyncPage> {
  String nome = '...';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PutAsync Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: $nome'),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    nome = Get.find<SharedPreferences>().getString('nome') ??
                        'Sem nome';
                  });
                },
                child: const Text('Buscar nome'))
          ],
        ),
      ),
    );
  }
}
