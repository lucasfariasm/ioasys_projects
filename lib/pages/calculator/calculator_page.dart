import 'package:flutter/material.dart';
import 'package:ioasys_projects/widgets/app_bar.dart';
import 'package:ioasys_projects/widgets/button.dart';
import 'package:ioasys_projects/widgets/custom_text_field.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double? imc;
  String textInfo = "Informe seus dados";

  void _calcImc() {
    double height = double.parse(heightController.text) / 100;
    double weight = double.parse(weightController.text);

    double imc = weight / (height * height);

    if (imc < 18.6) {
      textInfo = 'Você está abaixo do peso (${imc.toStringAsPrecision(2)})';
    } else if (imc > 18.6 && imc < 24.9) {
      textInfo = 'Você está no peso ideal (${imc.toStringAsPrecision(2)})';
    } else if (imc > 24.9 && imc < 29.9) {
      textInfo =
          'Você está levemente acima do peso (${imc.toStringAsPrecision(2)})';
    } else if (imc > 29.9 && imc < 34.9) {
      textInfo =
          'Você está com obesidade grau I (${imc.toStringAsPrecision(2)})';
    } else if (imc > 34.9 && imc < 39.9) {
      textInfo =
          'Você está com obesidade grau II (${imc.toStringAsPrecision(2)})';
    } else {
      textInfo =
          'Você está com obesidade grau III (${imc.toStringAsPrecision(2)})';
    }
  }

  _resetFields() {
    setState(() {
      heightController.clear();
      weightController.clear();
      textInfo = "Informe seus dados";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Calculadora IMC",
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () {
              _resetFields();
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Image.asset('assets/images/avatar.png'),
              const SizedBox(height: 40),
              CustomTextField(
                label: 'Peso (kg)',
                controller: weightController,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: 'Altura (cm)',
                controller: heightController,
              ),
              const SizedBox(height: 40),
              Button(
                textButton: 'Calcular',
                onPressed: () {
                  if (weightController.text.isNotEmpty &&
                      heightController.text.isNotEmpty) {
                    setState(() {
                      _calcImc();
                    });
                  }
                },
                colorButton: Theme.of(context).primaryColor,
              ),
              const SizedBox(height: 40),
              Text(textInfo),
            ],
          ),
        ),
      ),
    );
  }
}
