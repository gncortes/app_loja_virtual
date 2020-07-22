import 'package:app_loja_virtual/app/modules/home/models/order_by.dart';
import 'package:flutter/material.dart';

import 'order_by_option.dart';

class OrderByFilter extends StatelessWidget {
  final FormFieldSetter<OrderBy> onSaved;
  final OrderBy initialValue;

  OrderByFilter({Key key, this.onSaved, this.initialValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormField<OrderBy>(
      initialValue: initialValue,
      onSaved: onSaved,
      builder: (state) {
        return Row(
          children: <Widget>[
            OrderByOption(
              height: 50,
              width: 80,
              label: "Data",
              isSelected: state.value == OrderBy.DATE,
              onPressed: (){
                state.didChange(OrderBy.DATE);
              }
            ),
            SizedBox(width: 20,),
            OrderByOption(
              height: 50,
              width: 80,
              label: "Preço",
              isSelected: state.value == OrderBy.PRICE,
              onPressed: (){
                state.didChange(OrderBy.PRICE);
              }
            ),
          ],
        );
      });
  }
}
