import 'dart:convert';

import 'package:flutter/material.dart';

class Depositos extends StatelessWidget {
  const Depositos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Depósitos"),
          Expanded(child: listaD(context))
        ],
      ),
    );
  }
}
Future <List> leerJson(context) async {
  final String jsonString = await DefaultAssetBundle.of(context).loadString("assets/data/prueba.json");
  return json.decode(jsonString);

}
Widget listaD(context){
  return FutureBuilder(future: leerJson(context), builder: (context, snapshot){
    if (snapshot.hasData){
      final dataJ = snapshot.data!;
      return ListView.builder(itemCount: dataJ.length, itemBuilder: (context, index){
        final item = dataJ[index];
        return Column(
          children: [
            ListTile(
              onTap: () => alerta(context, item),
              title: Text("${item['id']}"),
            ),
            ListTile(
              title: Text("${item['monto']}")
            ),
            ListTile(
              title: Text("${item['banco']}")
            ),
            ListTile(
              title: Text("${item['monto']}")
            ),
          ],
        );
        
      } );
    }else{
      return Text("Data no encontrada");
    }
  });
}
void alerta(context, item){
  final origen = item['origen'];
  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: Text("Detalles del origen"),
      content: Column(
        children: [
          Text("Nombre: ${origen['nombre']}"),
          Text("tipo_cuenta: ${origen['tipo_cuenta']}"),
          Text("número_cuenta: ${origen['número_cuenta']}"),
          Text("banco_origen: ${origen['banco_origen']}")
        ],
      ),
    );
  });
}