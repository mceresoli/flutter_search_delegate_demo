import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: Text('SearchDelegate Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: (){Navigator.pushNamed(context, 'mostrarSearch');}, 
            child: Text('Lista'))

        ),
      ),      
    );
  }
}