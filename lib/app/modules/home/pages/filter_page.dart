import 'package:app_loja_virtual/app/modules/home/models/order_by.dart';
import 'package:flutter/material.dart';
import 'widgets_filter/animated_button_filter.dart';
import 'widgets_filter/order_by_filter.dart';
import 'widgets_filter/order_by_vendor.dart';
import 'widgets_filter/price_range_filter.dart';
import 'widgets_filter/section_title.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  final _formKey = GlobalKey<FormState>();
  final _scrollController = ScrollController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final filter = Filter(
      search: "",
      orderBy: OrderBy.DATE,
      minPrice: null,
      maxPrice: null,
      vendorType: VENDOR_TYPE_PARTICULAR | VENDOR_TYPE_PROFESSIONAL);

  bool _validatePrices() {
    if (filter.maxPrice != null && filter.minPrice != null)
      return filter.minPrice > filter.maxPrice;
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text("Filtrar busca"),
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[
            Form(
              key: _formKey,
              child: ListView(
                controller: _scrollController,
                padding: EdgeInsets.all(16),
                children: <Widget>[
                  const SectionTitle(label: "Ordernar por"),
                  OrderByFilter(
                    initialValue: filter.orderBy,
                    onSaved: (value) {
                      filter.orderBy = value;
                    },
                  ),
                  const SectionTitle(label: "Preço R\$"),
                  PriceRangeFilter(
                    filter: filter,
                  ),
                  const SectionTitle(label: "Tipo de anunciante"),
                  OrderByVendor(
                    initialValue: filter.vendorType,
                    onSaved: (value) {
                      filter.vendorType = value;
                    },
                  ),
                  const SizedBox(
                    height: 170,
                  ),
                ],
              ),
            ),
            AnimatedButtonFilter(
              onPressed: () {
                if (_formKey.currentState.validate())
                  _formKey.currentState.save();
                if (_validatePrices()) {
                  _scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: const Text(
                      "Faixa de preço irregular",
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.pink,
                  ));
                }
              },
              scrollController: _scrollController,
            ),
          ],
        ));
  }
}
