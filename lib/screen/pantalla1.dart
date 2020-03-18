import 'package:flutter/material.dart';
class Panatalla1 extends StatefulWidget {
  @override
  _Panatalla1State createState() => _Panatalla1State();
}

class _Panatalla1State extends State<Panatalla1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navegador(),
      body: cuerpo(),
      
    );
  }
  Widget navegador(){
    return AppBar(
      title: Text("SNACK"),
      centerTitle: true,
      backgroundColor: Colors.red[400],
      actions: <Widget>[
        Icon(Icons.menu),
        SizedBox(width: 20,)
      ],
    );

  }
  Widget cuerpo(){
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            contenedor("imagenes/foto1.jpeg","Plato1","44324"),
            SizedBox(height: 10,),
            contenedor("imagenes/foto2.jpeg","Plato2","222"),
            SizedBox(height: 10,),
            contenedor("imagenes/foto3.jpeg","Plato3","123"),
            SizedBox(height: 10,),
            contenedor("imagenes/foto4.jpeg","Plato4","11234"),
            SizedBox(height: 10,),
            contenedor("imagenes/foto5.jpeg","Plato5","8987"),
            SizedBox(height: 10,),
            contenedor("imagenes/foto1.jpeg","Plato1","1234"),
            SizedBox(height: 10,),
            contenedor("imagenes/foto2.jpeg","Plato2","234"),
            SizedBox(height: 10,),
            contenedor("imagenes/foto3.jpeg","Plato3","342"),
          ],

        ),
      ),
    );
    }
  Widget contenedor(String url, String nombre, String numero){
    return Stack(  
      children: <Widget>[
         Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             ClipRRect(
               borderRadius: BorderRadius.circular(20),
               child: SizedBox(
                 height: 150,
                 child:Image.asset("https://images.app.goo.gl/11PogndLCpBL6Pbi7",
                 height: 150,
                 width: 150,)),
               
             ),

            Container(
            //alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only( 
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(20)),
              color: Colors.orangeAccent,
            ),
            width: 200,
            height: 90,
            
            padding: EdgeInsets.only(left:20,top: 20),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(nombre, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text(numero, style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
            ],
          ),
        ),

           ],
         )
       
      ],




    );
  } 
  
}