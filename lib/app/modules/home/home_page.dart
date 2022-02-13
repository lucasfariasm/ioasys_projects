import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ioasys_projects/app/modules/home/components/card_util.dart';
import 'package:ioasys_projects/app/modules/home/components/drawer.dart';
import 'package:ioasys_projects/app/modules/home/components/profile.dart';
import 'package:ioasys_projects/app/modules/home/components/top_container.dart';
import 'package:ioasys_projects/app/modules/home/home_module.dart';
import 'package:ioasys_projects/shared/theme/app_theme.dart';
import 'package:localization/localization.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [Image.asset('assets/images/logo_home.png')],
      ),
      drawer: const CustomDrawer(),
      backgroundColor: AppTheme.colors.background,
      body: SafeArea(
        child: Column(
          children: [
            TopContainer(
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                          ),
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => const Profile(),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CircleAvatar(
                            radius: 35.0,
                            backgroundImage:
                                AssetImage('assets/images/avatar_home.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                'Lucas Farias',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Desenvolvedor Mobile',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: AppTheme.colors.background,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'home_utils'.i18n(),
                        style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          CardUtil(
                            title: 'calculator_title'.i18n(),
                            icon: Icons.calculate,
                            onTap: () {
                              Modular.to.pushNamed(HomeModule.routeCalculator);
                            },
                          ),
                          const SizedBox(width: 20.0),
                          CardUtil(
                            title: 'currency_conversion_title'.i18n(),
                            icon: Icons.account_balance,
                            onTap: () {
                              Modular.to.pushNamed(HomeModule.routeCurrencyConversion);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CardUtil(
                            title: 'todo_title'.i18n(),
                            icon: Icons.add_task,
                            onTap: () {
                              Modular.to.pushNamed(HomeModule.routeToDo);
                            },
                          ),
                          const SizedBox(width: 20.0),
                          CardUtil(
                            title: 'chuck_norris_title'.i18n(),
                            icon: Icons.face,
                            onTap: () {
                              Modular.to.pushNamed(HomeModule.routeChuckNorris);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
