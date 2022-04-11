import 'package:flutter/material.dart';
import 'package:search_delegate_demo/search/search_delegate.dart';

class ListaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('SearchDelegate Demo'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){
              // Este metodo showSearch es el que está definido para las busquedas. Hay que asignarle la clase que extienda de SearchDelegate
              showSearch( context: context, 
                          delegate: MiListaSearchDelegate()
                        );
              }, 
            icon: Icon(Icons.search_outlined))
          ],
        ),
        body: Center(
          child: Container(
            child: Text('Lista'),
    
          ),
        ),
      );
  }
}