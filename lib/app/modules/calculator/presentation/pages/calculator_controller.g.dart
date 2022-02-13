// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalculatorController on ControllerBase, Store {
  final _$textInfoAtom = Atom(name: 'ControllerBase.textInfo');

  @override
  String get textInfo {
    _$textInfoAtom.reportRead();
    return super.textInfo;
  }

  @override
  set textInfo(String value) {
    _$textInfoAtom.reportWrite(value, super.textInfo, () {
      super.textInfo = value;
    });
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  dynamic resetFields() {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.resetFields');
    try {
      return super.resetFields();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
textInfo: ${textInfo}
    ''';
  }
}
