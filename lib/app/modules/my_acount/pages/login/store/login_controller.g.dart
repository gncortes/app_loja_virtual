// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  Computed<bool> _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_LoginControllerBase.isValid'))
      .value;

  final _$isLogginAtom = Atom(name: '_LoginControllerBase.isLoggin');

  @override
  bool get isLoggin {
    _$isLogginAtom.reportRead();
    return super.isLoggin;
  }

  @override
  set isLoggin(bool value) {
    _$isLogginAtom.reportWrite(value, super.isLoggin, () {
      super.isLoggin = value;
    });
  }

  final _$goLoginAsyncAction = AsyncAction('_LoginControllerBase.goLogin');

  @override
  Future goLogin() {
    return _$goLoginAsyncAction.run(() => super.goLogin());
  }

  @override
  String toString() {
    return '''
isLoggin: ${isLoggin},
isValid: ${isValid}
    ''';
  }
}
