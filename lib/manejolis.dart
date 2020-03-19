import 'package:flutter/material.dart';
class Manejolist extends StatefulWidget {
  @override
  _ManejolistState createState() => _ManejolistState();
}

class _ManejolistState extends State<Manejolist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // definimos un navegador 
      appBar: _minavegador(),
      // definimos el cuerpo de la aplicacion
      body: _cuerpoli(),
      
    );
  }
  Widget _cuerpoli(){
    //MANEJO DE LISTVIEW = listas donde ponemos en su lista de hijos lo que 
    // se quiere mostrar y la direccion
    return ListView(
          scrollDirection: Axis.vertical,
        children: <Widget>[
        _item("PARIS","imagenes/ciudades/foto1.jpeg"),
        _item("ROMA","imagenes/ciudades/foto2.jpeg"),
        _item("GRECIA","imagenes/ciudades/foto3.jpeg"),
        _item("ROMA","imagenes/ciudades/foto4.jpeg"),
        _item("ITALIA","imagenes/ciudades/foto5.jpeg"),
        _item("ITALIA","imagenes/ciudades/foto3.jpeg"),
        _item("PERU","imagenes/ciudades/foto2.jpeg"),
        _item("PERU","imagenes/ciudades/foto1.jpeg"),
          ],
     
    );
  }
  //nos creamos un widget _item donde mandamos como 
  //parametros (imagen, nombrepais)
  Widget _item(String nombrei, String url){
    // manejamos el widget CARD
    return Card(
      color: Colors.teal[300],
      child: Column(
        children: <Widget>[
          //definimos el texto que ira en la parte superior
          Text(nombrei, 
          style: TextStyle(
            color: Colors.white, fontSize: 30,
            fontWeight: FontWeight.bold),),
          //manejamos el widget Image para colocar las imagenes
          Image(
            width: 350,
            height: 200,
            fit: BoxFit.cover,
            image:AssetImage(url) ),
            SizedBox(height: 10,),
            //Introducimos una lista de manera Horizontal
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("PUNTUACION: ",style: TextStyle(fontSize: 18),),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star_border, color: Colors.yellow,),
            ],
          )
        ],
      ),
    );
  }
  Widget _minavegador(){
    return AppBar(
      backgroundColor: Colors.teal,
      title: Text("VIAJES"),
      centerTitle: true,
      actions: <Widget>[
        Icon(Icons.menu)
      ],
    );
  }
}