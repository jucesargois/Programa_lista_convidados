import 'package:programa_lista_convidados/src/lista.dart';

class HomeInterface extends Lista {
  HomeInterface() : super(convidados: []);
}

Lista lista = Lista(convidados: []);

HomeInterfaceView(bool condicao, opcoes, int tam) {
  switch (opcoes) {
    case "Y":
      print('');
      break;
    default:
  }
}
