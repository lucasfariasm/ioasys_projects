import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/currency_conversion_controller.dart';
import 'presentation/pages/currency_conversion_page.dart';

class CurrencyConversionModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => CurrencyConversionController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => const CurrencyConversionPage())
      ];
}
