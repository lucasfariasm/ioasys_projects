import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:localization/localization.dart';

part 'calculator_controller.g.dart';

class CalculatorController = ControllerBase with _$CalculatorController; 

abstract class ControllerBase with Store {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double? imc;
  
  @observable
  String textInfo = 'calculator_info'.i18n();

  void calcImc() {
    double height = double.parse(heightController.text) / 100;
    double weight = double.parse(weightController.text);

    double imc = weight / (height * height);

    if (imc < 18.6) {
      textInfo = 'calculator_under_weight'.i18n([imc.toStringAsPrecision(2)]);
    } else if (imc > 18.6 && imc < 24.9) {
      textInfo = 'calculator_ideal_weight'.i18n([imc.toStringAsPrecision(2)]);
    } else if (imc > 24.9 && imc < 29.9) {
      textInfo = 'calculator_overweight'.i18n([imc.toStringAsPrecision(2)]);
    } else if (imc > 29.9 && imc < 34.9) {
      textInfo = 'calculator_obesity_I'.i18n([imc.toStringAsPrecision(2)]);
    } else if (imc > 34.9 && imc < 39.9) {
      textInfo = 'calculator_obesity_II'.i18n([imc.toStringAsPrecision(2)]);
    } else {
      textInfo = 'calculator_obesity_III'.i18n([imc.toStringAsPrecision(2)]);
    }
  }

  @action
  resetFields() {
      heightController.clear();
      weightController.clear();
      textInfo = 'calculator_info'.i18n();
  }
}