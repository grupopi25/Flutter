import 'package:flutter/material.dart';
import 'package:gerador_de_tabuada/custom_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? numeroSelecionado;
  String? operacaoSelecionada;
  List<String> resultado = [];

  void gerarTabuada() {
    if (numeroSelecionado == null || operacaoSelecionada == null) {
      return;
    }

    int numero = int.parse(numeroSelecionado!);
    List<String> novaTabuada = [];

    for (int i = 1; i <= 10; i++) {
      String linha = '';
      switch (operacaoSelecionada) {
        case '+':
          int r = numero + i;
          linha = '$numero + $i = $r';
          break;
        case '-':
          int r = numero - i;
          linha = '$numero - $i = $r';
          break;
        case 'X':
          int r = numero * i;
          linha = '$numero X $i = $r';
          break;
        case '/':
          double r = numero / i;
          linha = '$numero / $i = ${r.toStringAsFixed(2)}';
          break;
      }
      novaTabuada.add(linha);
    }

    setState(() {
      resultado = novaTabuada;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title:  Text(
          'Gerador de Tabuada',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color:  Color.fromARGB(60, 57, 57, 57),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(
                  child: Column(
                    children: [
                       Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'Informe o número',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          child: Column(
                            children: [
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomButton().botao('1', () {
                                      numeroSelecionado = '1';
                                      gerarTabuada();
                                    }),
                                    CustomButton().botao('2', () {
                                      numeroSelecionado = '2';
                                      gerarTabuada();
                                    }),
                                    CustomButton().botao('3', () {
                                      numeroSelecionado = '3';
                                      gerarTabuada();
                                    }),
                                    CustomButton().botao('4', () {
                                      numeroSelecionado = '4';
                                      gerarTabuada();
                                    }),
                                    CustomButton().botao('5', () {
                                      numeroSelecionado = '5';
                                      gerarTabuada();
                                    }),
                                  ],
                                ),
                              ),
                               SizedBox(height: 10),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomButton().botao('6', () {
                                      numeroSelecionado = '6';
                                      gerarTabuada();
                                    }),
                                    CustomButton().botao('7', () {
                                      numeroSelecionado = '7';
                                      gerarTabuada();
                                    }),
                                    CustomButton().botao('8', () {
                                      numeroSelecionado = '8';
                                      gerarTabuada();
                                    }),
                                    CustomButton().botao('9', () {
                                      numeroSelecionado = '9';
                                      gerarTabuada();
                                    }),
                                    CustomButton().botao('10', () {
                                      numeroSelecionado = '10';
                                      gerarTabuada();
                                    }),
                                  ],
                                ),
                              ),
                               SizedBox(height: 20),
                               Text(
                                'Escolha a operação:',
                                style: TextStyle(color: Colors.white),
                              ),
                               SizedBox(height: 20),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomButton().botao('+', () {
                                      operacaoSelecionada = '+';
                                      gerarTabuada();
                                    }),
                                    CustomButton().botao('-', () {
                                      operacaoSelecionada = '-';
                                      gerarTabuada();
                                    }),
                                    CustomButton().botao('X', () {
                                      operacaoSelecionada = 'X';
                                      gerarTabuada();
                                    }),
                                    CustomButton().botao('/', () {
                                      operacaoSelecionada = '/';
                                      gerarTabuada();
                                    }),
                                  ],
                                ),
                              ),
                               SizedBox(height: 20),
                               Text(
                                'Resultado:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                               SizedBox(height: 10),
                              Padding(
                                padding:  EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[900],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child:GridView.count(
                                    crossAxisCount:2, 
                                    childAspectRatio: 4, 
                                    children: List.generate(resultado.length, (index) {
                                      return Center(
                                        child: Text(
                                          resultado[index],
                                          style:  TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                      );
                                    }),
                                      ),

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
