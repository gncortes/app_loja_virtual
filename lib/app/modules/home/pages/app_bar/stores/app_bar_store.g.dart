// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_bar_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppBarStore on _AppBarStoreBase, Store {
  final _$searchAtom = Atom(name: '_AppBarStoreBase.search');

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  final _$_AppBarStoreBaseActionController =
      ActionController(name: '_AppBarStoreBase');

  @override
  dynamic changeSearch(String value) {
    final _$actionInfo = _$_AppBarStoreBaseActionController.startAction(
        name: '_AppBarStoreBase.changeSearch');
    try {
      return super.changeSearch(value);
    } finally {
      _$_AppBarStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
search: ${search}
    ''';
  }
}
