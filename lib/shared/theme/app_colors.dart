import 'package:flutter/material.dart';

abstract class IAppColors {
  Color get primary;
  Color get secondary;
  Color get background;
  Color get border;
}
class AppColors implements IAppColors {
  @override
  Color get primary => const Color(0xffC1007E);
  
  @override
  Color get secondary => const Color(0xff9e9e9e);
  
  @override
  Color get background => const Color(0xFFF7F7F7);

  @override
  Color get border => const Color(0xFFE9E9EC);

}