// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_drawer_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CustomDrawerController on _CustomDrawerControllerBase, Store {
  final _$currentPageAtom =
      Atom(name: '_CustomDrawerControllerBase.currentPage');

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  final _$_CustomDrawerControllerBaseActionController =
      ActionController(name: '_CustomDrawerControllerBase');

  @override
  dynamic changePage(int page) {
    final _$actionInfo = _$_CustomDrawerControllerBaseActionController
        .startAction(name: '_CustomDrawerControllerBase.changePage');
    try {
      return super.changePage(page);
    } finally {
      _$_CustomDrawerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage}
    ''';
  }
}
