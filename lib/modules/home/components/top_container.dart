import 'package:flutter/material.dart';
import 'package:ioasys_projects/shared/theme/app_theme.dart';

class TopContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  // final EdgeInsets padding;
  const TopContainer({
    Key? key,
    this.height = 125,
    required this.width,
    required this.child,
    // this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: AppTheme.colors.primary,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(40.0),
          bottomLeft: Radius.circular(40.0),
        ),
      ),
      height: height,
      width: width,
      child: child,
    );
  }
}
