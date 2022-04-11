import 'package:flutter/material.dart';


class ListProvider extends ChangeNotifier{

List<String> listaResultado = [];

ListProvider(){
   getLista('');
}

 getLista(String query) async{
   this.listaResultado = ['Toronto','Montreal','Vancouver','Ottawa','Edmonton','Mississauga','Winnipeg','Calgary','Quebec'];
   notifyListeners();
}

Future<List<String>>searchLista(String query) async{

    if(query.length==0){
      return this.listaResultado;
    } else{
      List<String>resultado = [];
      this.listaResultado.forEach((element) {
          if(element.toLowerCase().contains(query.toLowerCase())){
            resultado.add(element);
          }
      }
      );
      return resultado;
    }
}



}