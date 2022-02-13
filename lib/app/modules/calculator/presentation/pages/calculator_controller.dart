import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'calculator_controller.g.dart';

class CalculatorController = ControllerBase with _$CalculatorController; 

abstract class ControllerBase with Store {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double? imc;
  
  @observable
  String textInfo = "Informe seus dados";

  void calcImc() {
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

  @action
  resetFields() {
      heightController.clear();
      weightController.clear();
      textInfo = "Informe seus dados";
  }
}