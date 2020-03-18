import 'package:flutter/material.dart';
class Clasescrol extends StatefulWidget {
  @override
  _ClasescrolState createState() => _ClasescrolState();
}

class _ClasescrolState extends State<Clasescrol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _cuerpo(),
      appBar: _navegador(),
      
    );
  }
  Widget _navegador(){
    return AppBar(
      backgroundColor: Colors.teal[800],
      title: Text("VIAJES"),
      centerTitle: true,
      actions: <Widget>[
        Icon(Icons.menu)
      ],
    );
  }
  Widget _cuerpo(){
    return ListView(
          
          children: <Widget>[
            _item("imagenes/ciudades/foto1.jpeg","Londres"),
           _item("imagenes/ciudades/foto2.jpeg","Roma"),
           _item("imagenes/ciudades/foto3.jpeg","Paris"),
           _item("imagenes/ciudades/foto4.jpeg","Peru"),
           _item("imagenes/ciudades/foto5.jpeg","Grecia"),
           _item("imagenes/ciudades/foto1.jpeg","Londres"),
           _item("imagenes/ciudades/foto2.jpeg","Roma"),
           _item("imagenes/ciudades/foto3.jpeg","Paris"),
           _item("imagenes/ciudades/foto4.jpeg","Peru"),
           _item("imagenes/ciudades/foto5.jpeg","Grecia"),
        ],
        
    );
  }
  Widget _item(String url, String nombrec){
    return Card(
      elevation: 3,
      color: Colors.teal[200],
      child: Column(
        children: <Widget>[
          Text(nombrec,
          style:TextStyle(
            color: Colors.white,
            fontSize: 30) ,),
          Image(
            image: AssetImage(url),
            width: 350,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Puntuacion: ", 
              style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.bold),),
              Icon(Icons.star_border, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow,),
            ],
          )
        ],
      ),
    );
  }
}