import 'dart:io';

homeInterfaceView() {
  String? resp;
  print('Bem-vindo gostaria de criar uma lista de convidados? Y/N.');
  resp = stdin.readLineSync();
  if (resp == "Y") {
    menuOp();
  } else {
    print("===========PROGRAMA FINALIZADO==============");
  }
}

menuOp() async {
  String? menuresp;
  String? nomelista;
  String? titlelista;
  int? tamlist;
  List<String> convidados = [];

  print('Qual será o nome da sua lista');
  titlelista = stdin.readLineSync();
  print('');
  print("=========== NOME DA LISTA: $titlelista ==============");
  print('');
  print("Quantos convidados gostaria de adicionar a lista? ");
  tamlist = int.parse(stdin.readLineSync()!);
  print('');
  print(
      "=========== LISTA: $titlelista, COM $tamlist CONVIDADOS ==============");
  print('');
  print(
      "Favor digitar abaixo os nomes dos convidados(Quando digitar pressione ENTER para inserir)");
  //nomelista = stdin.readLineSync();
  convidados.add('---------------- Nome da lista: $titlelista ----------------');
  convidados.add('                        Convidados:');

  for (var i = 0; i <= tamlist - 1; i++) {
    nomelista = stdin.readLineSync();
    print('-----');
    convidados.add('                           $nomelista');
  }
  

  print('');
  print("Gostaria de gerar sua lista em um arquivo de texto? Y/N");
  menuresp = stdin.readLineSync();
  if (menuresp == "Y") {
    //var file = File('lista_convidados.txt');
    var fileCopy = await File('lista_de_convidados_para_$titlelista.txt')
        .writeAsString(convidados.join("\n").toString());
    RandomAccessFile raf = fileCopy.openSync(mode: FileMode.append);
  } else {
    print("===========PROGRAMA FINALIZADO==============");
  }
}
