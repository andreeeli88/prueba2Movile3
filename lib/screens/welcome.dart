import 'package:flutter/material.dart';
import 'package:pruebados/screens/login.dart';
import 'package:pruebados/screens/registro.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenido"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Login"),
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Login())) ,
          ),
          ListTile(
            title: Text("Registro"),
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Registro())) ,
          )
        ],
      ),
    );
  }
}