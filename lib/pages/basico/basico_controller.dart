import 'package:flutter/cupertino.dart';

class BasicoController extends ChangeNotifier {
  var nome = 'Sem nome';

  void alterarNome(String nomeNovo) {
    nome = nomeNovo;
    notifyListeners();
  }
}
