// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_facebook_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginFacebookController on _LoginFacebookControllerBase, Store {
  final _$isLogginWithFacebookAtom =
      Atom(name: '_LoginFacebookControllerBase.isLogginWithFacebook');

  @override
  bool get isLogginWithFacebook {
    _$isLogginWithFacebookAtom.reportRead();
    return super.isLogginWithFacebook;
  }

  @override
  set isLogginWithFacebook(bool value) {
    _$isLogginWithFacebookAtom.reportWrite(value, super.isLogginWithFacebook,
        () {
      super.isLogginWithFacebook = value;
    });
  }

  final _$goLoginWithFacebookAsyncAction =
      AsyncAction('_LoginFacebookControllerBase.goLoginWithFacebook');

  @override
  Future goLoginWithFacebook() {
    return _$goLoginWithFacebookAsyncAction
        .run(() => super.goLoginWithFacebook());
  }

  @override
  String toString() {
    return '''
isLogginWithFacebook: ${isLogginWithFacebook}
    ''';
  }
}
