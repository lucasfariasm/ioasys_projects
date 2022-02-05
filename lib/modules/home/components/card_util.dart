import 'package:flutter/material.dart';

import 'package:ioasys_projects/shared/theme/app_theme.dart';

class CardUtil extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onTap;
  const CardUtil({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          padding: const EdgeInsets.all(15.0),
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppTheme.colors.secondary,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  icon,
                  size: 50,
                ),
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppTheme.colors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
