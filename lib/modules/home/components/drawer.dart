import 'package:flutter/material.dart';
import 'package:ioasys_projects/shared/theme/app_theme.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(color: AppTheme.colors.primary),
            child: Stack(
              children: [
                Positioned(
                  left: 16.0,
                  bottom: 16.0,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(text: 'Ioasys Camp 2022 '),
                        WidgetSpan(
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ),
                      ],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.info),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text('Sobre'),
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.logout),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text('Sair'),
                ),
              ],
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}
