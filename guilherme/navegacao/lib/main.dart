import 'package:flutter/material.dart';
import 'package:navegacao/Tela1.dart';
import 'package:navegacao/Tela2.dart';
import 'package:navegacao/Tela3.dart';
import 'package:navegacao/Tela4.dart';

void main() => runApp(Aplicativo());

class Aplicativo extends StatelessWidget {
  final List<Pessoa> pessoas = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu principal',
      theme: ThemeData(),
      home: Menu(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/tela1': (context) => Cadastro(pessoas:pessoas),
        '/tela2': (context) => Tela2(),
        '/tela3': (context) => Tela3(),
        '/tela4': (context) => Tela4(),
      },
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu Principal',
          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: const Color.fromARGB(255, 28, 27, 112),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
          botao(texto: 'Cadastrar', rota:'/tela1', icone: Icons.ac_unit, cor:Colors.white),
            botao(texto: 'Listar', rota:'/tela2', icone: Icons.ac_unit, cor:Colors.white),
              botao(texto: 'Sobre', rota:'/tela3', icone: Icons.ac_unit, cor:Colors.white),
                botao(texto: 'Contato', rota:'/tela4', icone: Icons.ac_unit, cor:Colors.white),
          ],
        ),
      ),
    );
  }
}






class botao extends StatelessWidget{

final String texto;
final String rota;
final IconData icone;
 final Color cor;

botao({Key? key, required this.texto, required this.rota, required this.icone, required this.cor});


@override
 
    // TODO: implement build
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          ),

onPressed: () {Navigator.pushNamed(context, rota); },
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(icone, color: cor, size: 70,),
    Text(texto, style: TextStyle(color: cor, fontSize: 20.0),)
  ],
),

        ),
      );
    }
  }










