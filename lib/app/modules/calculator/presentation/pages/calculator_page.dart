import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ioasys_projects/shared/widgets/app_bar.dart';
import 'package:ioasys_projects/shared/widgets/button.dart';
import 'package:ioasys_projects/shared/widgets/custom_text_field.dart';

import 'calculator_controller.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends ModularState<CalculatorPage, CalculatorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Calculadora de IMC',
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () {
              controller.resetFields();
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
                controller: controller.weightController,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: 'Altura (cm)',
                controller: controller.heightController,
              ),
              const SizedBox(height: 40),
              Button(
                textButton: 'Calcular',
                onPressed: () {
                  if (controller.weightController.text.isNotEmpty &&
                      controller.heightController.text.isNotEmpty) {
                    setState(() {
                      controller.calcImc();
                    });
                  }
                },
                colorButton: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 40),
              Observer(
                builder: (_) => Text(controller.textInfo),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
