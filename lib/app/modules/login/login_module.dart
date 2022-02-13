import 'package:flutter_modular/flutter_modular.dart';
import 'package:ioasys_projects/app/modules/login/presentation/pages/login/login_page_controller.dart';

import 'presentation/pages/create_account/create_account_page.dart';
import 'presentation/pages/login/login_page.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [Bind.factory((i) => LoginPageController())];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const LoginPage()),
        ChildRoute('/create-account',
            child: (context, args) => const CreateAccountPage()),
      ];
}
