import 'package:flutter/material.dart';

TextEditingController email = TextEditingController();
TextEditingController pass = TextEditingController();

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro"),

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
              boton1()
             ],
           )
          ],
        ),
      ),
    );
  }
}
Widget boton1(){
  return ElevatedButton(onPressed: ()=>(), child: Text("Registro"));
}