import 'package:flutter/material.dart';
import 'package:ioasys_projects/modules/home/components/card_util.dart';
import 'package:ioasys_projects/modules/home/components/drawer.dart';
import 'package:ioasys_projects/modules/home/components/profile.dart';
import 'package:ioasys_projects/modules/home/components/top_container.dart';
import 'package:ioasys_projects/shared/theme/app_theme.dart';

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
                      const Text(
                        'Utilitários',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          CardUtil(
                            title: 'Calculadora de IMC',
                            icon: Icons.calculate,
                            onTap: () {
                              Navigator.pushNamed(context, '/calculator');
                            },
                          ),
                          const SizedBox(width: 20.0),
                          CardUtil(
                            title: 'Conversor de moedas',
                            icon: Icons.account_balance,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, '/currency_conversion');
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CardUtil(
                            title: 'To-do',
                            icon: Icons.add_task,
                            onTap: () {
                              Navigator.pushNamed(context, '/todo');
                            },
                          ),
                          const SizedBox(width: 20.0),
                          CardUtil(
                            title: 'Piadas do Chuck Norris',
                            icon: Icons.face,
                            onTap: () {
                              Navigator.pushNamed(context, '/chuck_categories');
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
