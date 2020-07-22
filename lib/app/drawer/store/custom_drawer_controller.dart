import 'package:mobx/mobx.dart';
part 'custom_drawer_controller.g.dart';

class CustomDrawerController = _CustomDrawerControllerBase
    with _$CustomDrawerController;


abstract class _CustomDrawerControllerBase with Store {
  
  _CustomDrawerControllerBase() {
    autorun((_) {
      print(currentPage);
    });
  }

  @observable
  int currentPage = 0;

  bool isPage(int page) => currentPage == page;
  
  @action
  changePage(int page) => currentPage = page;
}