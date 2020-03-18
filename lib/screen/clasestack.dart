import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
class Clasestack extends StatefulWidget {
  @override
  _ClasestackState createState() => _ClasestackState();
}

class _ClasestackState extends State<Clasestack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          _imagenf(),
          _loguin(),
        ],
      ),

    );
  }
  Widget _imagenf(){
    return Container(
      //color: Colors.red,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "imagenes/fondo1.jpg",
            ),
      ),
    )
    );
  }
  Widget _loguin(){
    return Container(
      width: 300,
      height: 450,
      color: Colors.white.withOpacity(0.4),
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FlutterLogo(size: 100,),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                hintText: "Correo",
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.email)
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Contraseña",
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.remove_red_eye)
                
              ),
            ),
            SizedBox(height: 40,),
            RaisedButton(
              child: Text("REGISTRAR",style: TextStyle(color: Colors.white),),
              color: Colors.blueAccent,
             onPressed: (){})

          ],
        ),
      ),
    );
  }
}