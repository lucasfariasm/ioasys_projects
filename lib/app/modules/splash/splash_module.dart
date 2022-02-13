import 'package:flutter_modular/flutter_modular.dart';
import 'package:ioasys_projects/app/modules/splash/presentation/pages/splash_page.dart';

class SplashModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
      ];
}
