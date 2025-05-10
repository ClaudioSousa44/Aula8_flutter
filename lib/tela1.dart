import 'package:aula8_navegacao_listview/tela2.dart';
import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
   Tela1({super.key});

  final List<Map<String, String>> frutas = [
    {
      'nome': 'Abacate',
      'imagem': 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Persea_americana_fruit_2.jpg/320px-Persea_americana_fruit_2.jpg',
      'descricao': 'Rico em gorduras saudáveis e vitaminas.'
    },
    {
      'nome': 'Abacaxi',
      'imagem': 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Pineapple_and_cross_section.jpg/320px-Pineapple_and_cross_section.jpg',
      'descricao': 'Ajuda na digestão com bromelina.'
    },
    {
      'nome': 'Açaí',
      'imagem': 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Euterpe_precatoria.jpg/320px-Euterpe_precatoria.jpg',
      'descricao': 'Fonte de antioxidantes e energia.'
    },
    {
      'nome': 'Acerola',
      'imagem': 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Malpighia_glabra_fruit.jpg/320px-Malpighia_glabra_fruit.jpg',
      'descricao': 'Riquíssima em vitamina C.'
    },
    {
      'nome': 'Amora',
      'imagem': 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Morus_nigra_2005-07-08.jpg/320px-Morus_nigra_2005-07-08.jpg',
      'descricao': 'Possui propriedades anti-inflamatórias.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    //acessa o map na lista
    print(frutas[1]['nome']);
    return Scaffold(
      appBar: AppBar(title: Text("Tela 1"),),
        body: Center(
          child: Column(
            children: [
              Text('Tela 1'),
              ElevatedButton(onPressed: () => proximaTela(context),
               child: Text("Próxima tela")
               ),
               Container(
                height:500,
                 child: ListView.builder(itemCount: frutas.length,itemBuilder: (context, index){
                  return ListTile(
                    leading: Image.network(frutas[index]['imagem'] ?? 'erro', width: 200),
                    title:Text(frutas[index]['nome'] ?? 'erro'),
                    subtitle: Text(frutas[index]['descricao'] ?? 'erro'),
                  ); 
                 }),
               )
            ],
          ),
        ),
      );
  }
  
  void proximaTela(BuildContext context) {
    //Navigate 
    Navigator.push(context, MaterialPageRoute(builder: (context) => Tela2()));
  }
}
