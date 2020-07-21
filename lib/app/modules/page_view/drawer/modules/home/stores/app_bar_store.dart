import 'package:mobx/mobx.dart';
part 'app_bar_store.g.dart';

class AppBarStore = _AppBarStoreBase with _$AppBarStore;

abstract class _AppBarStoreBase with Store {
  @observable
  String search = "";
  @action
  changeSearch(String value) => search = value;
}
