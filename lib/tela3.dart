import 'package:aula8_navegacao_listview/tela1.dart';
import 'package:aula8_navegacao_listview/tela2.dart';
import 'package:flutter/material.dart';

class Tela3 extends StatelessWidget {
  const Tela3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tela 3"),),
        body: Center(
          child: Column(
            children: [
              Text('Tela 2'),
              ElevatedButton(onPressed: () => proximaTela(context),
               child: Text("Próxima tela")
               ),
               ElevatedButton(onPressed: () => tela1(context),
               child: Text("Tela 1")
               ),
               ElevatedButton(onPressed: () => Navigator.pop(context),
               child: Text("voltar")
               ),
            ],
          ),
        ),
      );
  }
  
  void proximaTela(BuildContext context) {
    //Navigate 
    Navigator.push(context, MaterialPageRoute(builder: (context) => Tela2()));
  }

  void tela1(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Tela1()));
  }
}
