


import 'package:clase1/screen/login2.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      home: Login2(),
    );
      
  }
  Widget nuevo(){
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            cuerpo(),
            cuerpo2(),
            
          ],
        ),
      ),
      
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("BIENVENIDO", style: TextStyle(color: Colors.white, fontSize: 25),),
        actions: <Widget>[
          Icon(Icons.menu, color: Colors.yellow,size: 30,),
          Icon(Icons.phone, color: Colors.white,size: 30,),
          Icon(Icons.stars, color: Colors.yellowAccent,size: 30,),
         

        ],

      ),

    );

  }
  Widget cuerpo(){
    return  Container(
      height: 200,
      width: 500,
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.stars, color: Colors.red,),
          Icon(Icons.stars, color: Colors.red,size: 40,),
          Icon(Icons.stars, color: Colors.red,),
   

        ],
      ),

    );
  }
  Widget cuerpo2(){
    return Container(
      height: 200,
      width: 500,
      color: Colors.blue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.phone,size: 30,color: Colors.white,),
          Icon(Icons.phone, size: 50,color: Colors.white,),
          Icon(Icons.phone,size: 30,color: Colors.white,),
         

        ],
      ),
    );
  }
  
 
}

