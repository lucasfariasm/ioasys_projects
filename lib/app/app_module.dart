import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';
import 'modules/splash/splash_module.dart';

class AppModule extends Module {
  static const routeHome = '/home/';
  static const routeLogin = '/login/';
  static const routeSplash = '/splash/';
  

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: SplashModule()),
        ModuleRoute(routeHome, module: HomeModule()),
        ModuleRoute(routeLogin, module: LoginModule()),
      ];
}
