import 'package:dio/dio.dart';
import 'package:ioasys_projects/app/modules/currency_conversion/presentation/models/currencies.dart';

class FetchCurrenciesCommand {
  Future<Currencies> call() async {
    try {
      var response =
          await Dio().get('https://api.hgbrasil.com/finance?format=json');
      final currencies = response.data['results']['currencies'];
      final dolar = currencies['USD']['buy'];
      final euro = currencies['EUR']['buy'];
      return Currencies(dolar: dolar, euro: euro);
    } catch (e) {
      return Currencies(dolar: 0, euro: 0);
    }
  }
}
