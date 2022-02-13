import 'package:flutter/material.dart';
import 'package:ioasys_projects/shared/services/fetch_currencies_command.dart';

class CurrencyConversionController {
  TextEditingController realController = TextEditingController();
  TextEditingController dolarController = TextEditingController();
  TextEditingController euroController = TextEditingController();

  final fetchCurrencies = FetchCurrenciesCommand();

  fetchData(double value, String currency) async {
    final currencies = await fetchCurrencies();
    final dolarPrice = currencies.dolar;
    final euroPrice = currencies.euro;

    if (currency == 'REAL') {
      dolarController.text = (value / dolarPrice).toStringAsFixed(2);
      euroController.text = (value / euroPrice).toStringAsFixed(2);
    } else if (currency == 'DOLAR') {
      realController.text = (value * dolarPrice).toStringAsFixed(2);
      euroController.text = (value * dolarPrice / euroPrice).toStringAsFixed(2);
    } else {
      realController.text = (value * euroPrice).toStringAsFixed(2);
      dolarController.text =
          (value * euroPrice / dolarPrice).toStringAsFixed(2);
    }
  }
}
