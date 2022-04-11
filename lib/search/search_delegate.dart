

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_delegate_demo/provider/list_provider.dart';

class MiListaSearchDelegate extends SearchDelegate{

  @override
  
  String get searchFieldLabel => 'Buscar ';

  @override

  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton( onPressed: () => query = '', 
                  icon: Icon(Icons.clear)
                  )
      ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
              onPressed: ()=> close(context,null), 
              icon: Icon(Icons.arrow_back));
    }

  @override
  Widget buildResults(BuildContext context) {
    return Text('buildResults');  
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    final listProvider = Provider.of<ListProvider>(context, listen: false);

    // Se dispara cada vez que cambia el query, es decir cada vez que se ingresa una letra en el input de busqueda
    if(query.isEmpty){
      return listaVacia();
    }

    return FutureBuilder(
      future: listProvider.searchLista(query),
      builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
        if(!snapshot.hasData) return listaVacia();
        final lista=snapshot.data!;

        return ListView.builder(
          itemCount:lista.length ,
          itemBuilder: (_,int index ) => _ListItem(lista[index])
        );
      },
    );
  }
}

class listaVacia extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Icon(Icons.list,color: Colors.grey,size: 150,),),
    );
  }
}

class _ListItem extends StatelessWidget {
  final item;

  const _ListItem(this.item);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item),
      );
  }
}