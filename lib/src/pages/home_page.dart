import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final estiloTexto = new TextStyle(fontSize: 32);
  int contador=0;
  @override


  Widget build(BuildContext context) {
    /*return Scaffold(

      appBar:  AppBar(
        title: Text('hola grupo del 15701'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Este es el mensaje de el cuerpo'),
      ),

    );*/

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('TITULO'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de Clicks', style: estiloTexto),
              Text('$contador',
            ),
            ],
              
            
          ),
        ),
        floatingActionButton: _nuevoButton(),
      ),
    );
  }
         
      Widget _nuevoButton(){
      return Row(
        children: <Widget>[
           FloatingActionButton(
              child:Icon(Icons.add) ,
              onPressed:(){
                setState(() {
                  contador++;
                
                });
              }),
          FloatingActionButton(
              child:Icon(Icons.exposure_zero) ,
              onPressed:(){
                setState(() {
                  contador=0;
                  print("Reset");

                });
              }),

            
            FloatingActionButton(
              child:Icon(Icons.remove) ,
              onPressed:(){
                
                setState(() {
                  contador--;
              });
              })
              
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          );}
        
      


          
          
            
          
        
            
      
      
     
  

}