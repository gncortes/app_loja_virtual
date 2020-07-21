import 'package:app_loja_virtual/app/modules/page_view/drawer/modules/home/models/order_by.dart';
import 'package:app_loja_virtual/app/modules/page_view/drawer/modules/home/pages/widgets_filter/order_by_filter.dart';
import 'package:flutter/material.dart';
import 'widgets_filter/section_title.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  final  _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Filtrar busca"),
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[
            Form(
              key: _formKey,
              child: ListView(
                padding: EdgeInsets.all(16),
                children: <Widget>[
                  const SectionTitle(label: "Ordernar por"),
                  OrderByFilter(
                    initialValue: OrderBy.DATE,
                    onSaved: (value){

                    },
                  ),
                  const SectionTitle(label: "Preço R\$"),
                  const SectionTitle(label: "Tipo de anunciante"),
                ],
              ),
            )
          ],
        ));
  }
}
