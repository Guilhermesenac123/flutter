import 'package:flutter/material.dart';

class Pessoa {
  String nome;
  String email;
  String telefone;
  String endereco;
  String cidade;

  Pessoa(this.nome, this.email, this.telefone, this.endereco, this.cidade);
}

class Cadastro extends StatefulWidget {
  final List<Pessoa> pessoas;
  Cadastro({required this.pessoas});

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final nomeControle = TextEditingController();
  final emailControle = TextEditingController();
  final telefoneControle = TextEditingController();
  final enderecoControle = TextEditingController();
  final cidadeControle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Pessoas"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Cadastro de Contato",
              style: TextStyle(fontSize: 30),
            ),
            TextField(
                controller: nomeControle,
                decoration: InputDecoration(labelText: 'Nome')),
            TextField(
                controller: emailControle,
                decoration: InputDecoration(labelText: 'Email')),
            TextField(
                controller: telefoneControle,
                decoration: InputDecoration(labelText: 'Telefone')),
            TextField(
                controller: enderecoControle,
                decoration: InputDecoration(labelText: 'Endereço')),
            TextField(
                controller: cidadeControle,
                decoration: InputDecoration(labelText: 'Cidade')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Pessoa pessoaNova = Pessoa(
                    nomeControle.text,
                    emailControle.text,
                    telefoneControle.text,
                    enderecoControle.text,
                    cidadeControle.text,
                  );
                  widget.pessoas.add(pessoaNova);
                  nomeControle.clear();
                    emailControle.clear();
                    telefoneControle.clear();
                    enderecoControle.clear();
                    cidadeControle.clear();
                });
              },
              child: Text("Salvar"),
            ),
          ],
        ),
      ),
    );
  }
}
