import 'package:flutter/material.dart';

class PageViewController extends PageController{
  int _page = 0;
  int get currentPage => _page;

  void changePage(int page) {
    if (_page == page) {
      return;
    }
    _page = page;
    this.jumpToPage(_page);
  }
}
