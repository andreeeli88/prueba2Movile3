import 'package:flutter/material.dart';
import 'package:pruebados/screens/login.dart';
import 'package:pruebados/screens/registro.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
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