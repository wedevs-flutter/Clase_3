import 'package:flutter/material.dart';
class Pantalla1 extends StatefulWidget {
  @override
  _Pantalla1State createState() => _Pantalla1State();
}

class _Pantalla1State extends State<Pantalla1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(),
      appBar: appbar(),
      
    );
  }
  Widget appbar(){
    return AppBar(
      backgroundColor: Colors.red,
      title: Text("hola"),
      centerTitle: true,
      actions: <Widget>[
        Icon(Icons.menu),
        

        Spacer(),
        Icon(Icons.phone_forwarded),
        Spacer(),
        Icon(Icons.menu),
        
      ],


      
    );

  }
  Widget cuerpo(){

  }
}