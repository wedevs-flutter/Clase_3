import 'package:flutter/material.dart';
class Loginstack extends StatefulWidget {
  @override
  _LoginstackState createState() => _LoginstackState();
}

class _LoginstackState extends State<Loginstack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //stf para generar la clase

      //MANEJO DE STACK= es una pila la cual tiene igual una lista de hijos
      // donde sus hijos se posicionan uno encima del otro
      body:Stack(
        //para manejar la posicion de los widgets
        alignment: Alignment.center,
        children: <Widget>[
          _imagenf(),
          _login(),
        ],
      ) ,
      
      
    );
  }
   // creamos un widget para manejo de la imagen de fondo
  Widget _imagenf(){
    // con los atributos del contenedor usamos una 
    // CajadeDecoracion y ahi definimos la imagen
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("imagenes/fondo1.jpg"))
      ),
    );
  }
  Widget _login(){
    //reutilizamos el codigo de la clase anterior
    return Container(
      width: 300,
      height: 400,
      //para que el contenedor tenga ese aspecto aumentamos la funcion 
      //al color con (.withOpacity(valor) valor = [0,1])
      
      color: Colors.white.withOpacity(0.4),
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      //para que desaparezca el error de desborde implementamos
      //un Scroll que englobe todo nuestro loguin
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FlutterLogo(size: 100,),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Correo",
                border: OutlineInputBorder()
              ),
            ),
            
            SizedBox(height: 30,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "Contraseña",
                border: OutlineInputBorder()
              ),

            ),
            SizedBox(height: 30,),
           
            RaisedButton(
              child: Text("REGISTRAR"),
              color: Colors.blueAccent,
              onPressed: (){},)

          
          ],
        ),)

      
    );
  }
}