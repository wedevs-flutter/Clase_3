import 'package:flutter/material.dart';
class Login2 extends StatefulWidget {
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: cuerpo(),
      
    );
  }
  Widget carddist(){
    return Card(
      
    );
  }
  Widget cuerpo(){
    return Container(
      padding: EdgeInsets.all(50),
      //height: 300,
      color: Colors.blueGrey,
      child: Center(
        child: Column(
          children: <Widget>[
            FlutterLogo(size: 200,),
            SizedBox(height: 30,),
            Expanded(
              flex: 1,
              child:TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Correo",
                border: OutlineInputBorder()
              ),
            ), ),
            
            //SizedBox(height: 30,),
            Expanded(
              flex: 2,
              child:TextField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "Contraseña",
                border: OutlineInputBorder()
              ),

            ) ),
            SizedBox(height: 30,),
           
            RaisedButton(
              child: Text("REGISTRAR"),
              color: Colors.blueAccent,
              onPressed: (){},)

          ],
        ),
      ),
    );

  }
  Widget cuerpo2(){
    return Container(
    child: ListView(
      children: <Widget>[
        FlutterLogo(size: 200,),
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
             
            
          
      ],
    ),
    
    );
  }
}