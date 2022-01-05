import 'dart:io';


HomeInterfaceView(bool condicao, opcoes, int tam) {
  String? resp;
  print('Bem-vindo gostária de criar uma lista de convidados? Y/N.');
  resp = stdin.readLineSync();
  if (resp == "Y") {
    MenuOp();
  } else {
    print("===========PROGRAMA FINALIZADO==============");
  }
}

MenuOp() {
  String? menuresp;
  String? nomelista;
  int? tamlist;
  List<String> convidados = [];

  print('Qual será o nome da sua lista');
  nomelista = stdin.readLineSync();
  print("=========== NOME DA LISTA: $nomelista ==============");
  print("Quantos convidados gostária de adicionar a lista? ");
  tamlist = int.parse(stdin.readLineSync()!);
  print("LISTA PARA: $nomelista, COM $tamlist CONVIDADOS");

  print("Favor digitar abaixo os nomes dos convidados.");
  //nomelista = stdin.readLineSync();

  for (var i = 0; i <= tamlist; i++) {
    nomelista = stdin.readLineSync();
    convidados.add(nomelista as String);
  }

  print("Gostária de gerar sua lista em um arquivo de texto?");
 

  //print(convidados); printa lista
  //DEIXAR VERIFICAÇÃO DO MENU PARA O FINAL.
  // if (nomelista == "") {
  // print("Digite um nome válido");
  //}
}
