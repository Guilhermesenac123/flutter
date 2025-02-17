import 'package:flutter/material.dart';



void main(){


    runApp(PaginaInicial()); 

}

class PaginaInicial extends StatelessWidget {
   const PaginaInicial({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(




    home:Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Pagina Inicial"),
      ),
    



     body: Center(
      child: Column(
        children: [
          Image.network('https://miro.medium.com/v2/resize:fit:578/1*szmA2b5DQS_U5wAGgHiPQg.png', width: 300, height: 300,),



        SizedBox(height: 20,),
         Text("O que é Flutter?", style: TextStyle(fontSize: 20),),

         Text('''Flutter é um framework do Google para criar aplicativos multiplataforma. \n 
         Possui Widgets, que são blocos de construção da interface no flutter, toda tela é um widget, desde botões e textos até layouts mais complexos, Eles podem ser:
         ''', textAlign: TextAlign.center, ),


         ListTile(leading: Icon(Icons.arrow_circle_right_outlined),
         title: Text("Statefull: Com estado dinamico, a tela muda!"),),



         ListTile(leading: Icon(Icons.arrow_circle_right_outlined),
         title: Text("Stateless: Imutável, a tela sempre é a mesma!"),),



        ],
      ),
     ),
    ),
     );



  }
}
