import 'package:flutter/material.dart';
import 'package:ioasys_projects/shared/theme/app_theme.dart';
import 'package:localization/localization.dart';

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
                    text: TextSpan(
                      children: [
                        TextSpan(text: 'drawer_text'.i18n()),
                        const WidgetSpan(
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ),
                      ],
                      style: const TextStyle(
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
              children: [
                const Icon(Icons.info),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('drawer_about'.i18n()),
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                const Icon(Icons.logout),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('drawer_logout'.i18n()),
                ),
              ],
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/login/');
            },
          ),
        ],
      ),
    );
  }
}
