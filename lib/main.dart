import 'dart:io';

import 'package:programa_lista_convidados/src/interface.dart';
String? opcoes;
bool condicao = true;
 main(List<String> arguments) {
  String resp;
  HomeInterfaceView(condicao,opcoes,5);
  opcoes = stdin.readLineSync();
}
