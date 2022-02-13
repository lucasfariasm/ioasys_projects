import 'package:flutter_modular/flutter_modular.dart';
import 'package:ioasys_projects/app/modules/chuck_norris/presentation/pages/joke/joke_page.dart';

import 'presentation/pages/categories/categories_controller.dart';
import 'presentation/pages/categories/categories_page.dart';
import 'presentation/pages/joke/joke_controller.dart';

class ChuckModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.factory((i) => JokeController()),
    Bind.factory((i) => CategoriesController())
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (contex, args) => const ChuckCategoriesPage()),
    ChildRoute('/joke/', child: (contex, args) => JokePage(category: args.data)),
  ];
}