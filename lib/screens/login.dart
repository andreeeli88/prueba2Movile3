import 'package:flutter/material.dart';
import 'package:pruebados/screens/depositos.dart';
import 'package:pruebados/screens/transferencias.dart';

TextEditingController email = TextEditingController();
TextEditingController pass = TextEditingController();

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),

      ),
      body: Center(
        child: Column(
          children: [
           Column(
             children: [
               Form(child: 
                TextField(
                  decoration: InputDecoration(labelText: 'Correo'),
                  controller: email,
                ),
                
               ),
               Form(child: 
               TextField(
                  decoration: InputDecoration(labelText: 'Contraseña'),
                  controller: pass,
                ),
               ),
              boton1(context)
             ],
           )
          ],
        ),
      ),
    );
  }
}
Widget boton1(context){
  return ElevatedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Depositos() )), child: Text("Ingrese"));
}