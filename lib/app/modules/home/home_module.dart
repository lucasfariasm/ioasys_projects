import 'package:flutter_modular/flutter_modular.dart';
import 'package:ioasys_projects/app/modules/calculator/calculator_module.dart';
import 'package:ioasys_projects/app/modules/chuck_norris/chuck_module.dart';
import 'package:ioasys_projects/app/modules/currency_conversion/currency_conversion_module.dart';
import 'package:ioasys_projects/app/modules/home/home_page.dart';
import 'package:ioasys_projects/app/modules/todo/todo_list_module.dart';

class HomeModule extends Module {
  static const routeCalculator = 'calculator/';
  static const routeChuckNorris = 'chuck-norris/';
  static const routeCurrencyConversion = 'currency-conversion/';
  static const routeToDo = 'to-do/';

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ModuleRoute(routeCalculator, module: CalculatorModule()),
        ModuleRoute(routeChuckNorris, module: ChuckModule()),
        ModuleRoute(routeCurrencyConversion,
            module: CurrencyConversionModule()),
        ModuleRoute(routeToDo, module: TodoListModule()),
      ];
}
