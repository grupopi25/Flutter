import 'package:calculadora_imc_flutter/componets/custom_button.dart';
import 'package:calculadora_imc_flutter/componets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();
  final GlobalKey<FormState> formKeyPeso = GlobalKey<FormState>();
  final GlobalKey<FormState> formKeyAltura = GlobalKey<FormState>();

  String infoImc = "Informe seus dados!";
  double imc = 0;

  void resultado() {
    setState(() {
      if (pesoController.text.isEmpty || alturaController.text.isEmpty) {
        infoImc = "Por favor, preencha todos os campos!";
        return;
      }

      double peso = double.tryParse(pesoController.text) ?? 0;
      double alturaCm = double.tryParse(alturaController.text) ?? 0;

      if (peso <= 0 || alturaCm <= 0) {
        infoImc = "Valores inválidos!";
        return;
      }

      double alturaM = alturaCm / 100;
      imc = peso / (alturaM * alturaM);
      imc = double.parse(imc.toStringAsFixed(2));

      if (imc < 18.5) {
        infoImc = "Abaixo do peso";
      } else if (imc >= 18.5 && imc < 24.9) {
        infoImc = "Peso normal";
      } else if (imc >= 25 && imc < 29.9) {
        infoImc = "Sobrepeso";
      } else if (imc >= 30 && imc < 34.9) {
        infoImc = "Obesidade grau I";
      } else if (imc >= 35 && imc < 39.9) {
        infoImc = "Obesidade grau II";
      } else {
        infoImc = "Obesidade grau III";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[600],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo[800],
        title: const Text(
          'Calculadora IMC',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
        child: Column(
          children: [
            CustomTextFormField().Peso(
              pesoController,
              (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira seu peso';
                }
                return null;
              },
              formKeyPeso,
            ),
            const SizedBox(height: 16),
            CustomTextFormField().Altura(
              alturaController,
              (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira sua altura';
                }
                return null;
              },
              formKeyAltura,
            ),
            const SizedBox(height: 16),
            CustomButton().buttonCalculateImc(resultado),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.indigo[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Seu IMC é:',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Text(
                      imc == 0 ? '-' : imc.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      infoImc,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
