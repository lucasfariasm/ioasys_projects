import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ioasys_projects/shared/widgets/app_bar.dart';
import 'package:localization/localization.dart';

import 'currency_conversion_controller.dart';
import 'widgets/custom_text_field_currencie.dart';

class CurrencyConversionPage extends StatefulWidget {
  const CurrencyConversionPage({Key? key}) : super(key: key);

  @override
  State<CurrencyConversionPage> createState() => _CurrencyConversionPageState();
}

class _CurrencyConversionPageState extends ModularState<CurrencyConversionPage, CurrencyConversionController> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'currency_conversion_title'.i18n()),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Image.asset('assets/images/coin.png'),
              const SizedBox(height: 40),
              CustomTextFieldCurrencie(
                labelText: 'currency_conversion_brl'.i18n(),
                prefix: 'currency_conversion_brl_symbol'.i18n(),
                borderStyle:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                keyboard: const TextInputType.numberWithOptions(decimal: true),
                onChanged: (value) => controller.fetchData(value, 'REAL'),
                controller: controller.realController,
              ),
              const SizedBox(height: 20),
              CustomTextFieldCurrencie(
                labelText: 'currency_conversion_usd'.i18n(),
                prefix: 'currency_conversion_usd_symbol'.i18n(),
                borderStyle:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                keyboard: const TextInputType.numberWithOptions(decimal: true),
                onChanged: (value) => controller.fetchData(value, 'DOLAR'),
                controller: controller.dolarController,
              ),
              const SizedBox(height: 20),
              CustomTextFieldCurrencie(
                labelText: 'currency_conversion_eur'.i18n(),
                prefix: 'currency_conversion_eur_symbol'.i18n(),
                borderStyle:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                keyboard: const TextInputType.numberWithOptions(decimal: true),
                onChanged: (value) => controller.fetchData(value, 'EURO'),
                controller: controller.euroController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
