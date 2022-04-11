import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_delegate_demo/pages/lista_page.dart';
import 'package:search_delegate_demo/pages/main_page.dart';
import 'package:search_delegate_demo/provider/list_provider.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ListProvider(),lazy: false,)
      ],
      child:
    
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
                'main'          : (_)=>MainPage(),
                'mostrarSearch' : (_)=>ListaPage()
      },
      initialRoute: 'main',
    )
    );    
  }
}


