import 'package:flutter/material.dart';

void main() {
  runApp(Aula4());
}

class Aula4 extends StatelessWidget {//extends: vai consumir de uma classe StatelesWidget
  @override
  Widget build(BuildContext) {//widget build: construção de varios widget
    return MaterialApp(

      theme: ThemeData(//modifica o tema do appbar
        primarySwatch: Colors.red,
        textTheme: const TextTheme (bodyMedium: TextStyle(
          fontFamily: "Arial",
          fontSize: 16
        )
        )
      ),

      home: Scaffold( 
        appBar: AppBar(//barra de cima da aplicação
          title: const Text("Inicio"),
          centerTitle: true, 
        ),

       /*2 body: Center(
          //child: Text("Aula", style: TextStyle(fontSize: 25),),
         
         /*1 child: Row(//para apenas um componente(widget). row: dentro da mesma linha
            children: [//conjunto de componentes, usando a virgula para separar os elementos
                Text("Primeiro texto"),
                Text("Primeiro texto"),
                Text("Primeiro texto"),
            ],
            ),1*/

          child: Column(//dentro da mesma coluna
            children: [//conjunto de componentes
                Image(image: AssetImage("assets/ji-parana.jpg")),//imagem
                Icon(Icons.star, color: Colors.blue),//icone
                Icon(Icons.star, color: Colors.blue),
                Icon(Icons.star, color: Colors.blue),
                Container(
                  padding: EdgeInsets.all(15),//espaço de 15px entre os componentes
                  child: Row(
                    children: [
                      Text("Brasil"),
                      Text("Ji-Paraná, RO"),
                    ],
                  ),
                ),
            ],
            )

        )2*/

        /*3body: ListView(//cria uma lista 
              children:[
                Container(//container: vai englobar uma serie de layout
                  height: 120,
                  color: Colors.orange
                ),
                Container(
                  height: 120,
                  color: Colors.green
                ),
                Container(
                  height: 120,
                  color: Colors.blue
                ),
                Container(
                  height: 120,
                  color: Colors.black
                ),
                Container(
                  height: 120,
                  color: Colors.yellow
                ),
                Container(
                  height: 120,
                  color: Colors.pink
                ),

              ]
            )3*/


          /*4 body: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              children: [
                Container(
                  color: Colors.yellow
                ),
                Container(
                  color: Colors.green
                ),
                Container(
                  color: Colors.blue
                ),
                Container(
                  color: Colors.red
                )
              ],
          )4*/

          drawer: Drawer(
            child: ListView(
              children:[
                DrawerHeader(
                  child: Text("Filho"),
                  decoration: BoxDecoration(
                    color: Colors.amber
                  ),
                  ),
                ListTile(
                  title: Text("Teste"),
                  onTap:() {},
                )
              ]
            )
          )



      ),
    );
  }
}
