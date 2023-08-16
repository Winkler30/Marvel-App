import 'package:flutter/material.dart';
import '../http/personagem_api.dart';
import '../model/personagem.dart';

class PersagensList extends StatefulWidget {
  const PersagensList({super.key});


  @override
  State<PersagensList> createState() => _PersagensListState();
}

class _PersagensListState extends State<PersagensList> {
PersonagemApi api = PersonagemApi();

  
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text('Listagens de Personagens')),
      body: FutureBuilder <List<Personagem>>(
        future: api.getPersonagens(),
        builder: (context,snapshot){
          if (snapshot.hasData){
            return Text(snapshot.toString());
          }else{
            return Text('Não achou nada');
          }
        },
      ),
    );
  }
}