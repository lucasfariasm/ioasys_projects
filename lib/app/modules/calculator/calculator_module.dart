import 'package:flutter_modular/flutter_modular.dart';
import 'package:ioasys_projects/app/modules/calculator/presentation/pages/calculator_controller.dart';

import 'presentation/pages/calculator_page.dart';

class CalculatorModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.factory((i) => CalculatorController())
  ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const CalculatorPage()),
      ];
}
