import 'package:aula8_navegacao_listview/tela3.dart';
import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tela 2"),),
        body: Center(
          child: Column(
            children: [
              Text('Tela 2'),
              ElevatedButton(onPressed: () => proximaTela(context),
               child: Text("Próxima tela")
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
    Navigator.push(context, MaterialPageRoute(builder: (context) => Tela3()));
  }
}
