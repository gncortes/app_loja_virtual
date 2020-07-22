import 'package:app_loja_virtual/app/modules/home/models/order_by.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PriceRangeFilter extends StatelessWidget {
  final Filter filter;
  PriceRangeFilter({Key key, this.filter}) : super(key: key);

  String _getNumberOnly(String text) {
    return text.replaceAll(RegExp(r'[^\d]'), "");
  }

  int _getNumber(String number) {
    return number.isEmpty ? null : int.parse(_getNumberOnly(number));
  }

  bool _validator(String text) {
    return (text.isNotEmpty && int.parse(_getNumberOnly(text)) == null);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: TextFormField(
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: false),
              inputFormatters: [
                WhitelistingTextInputFormatter.digitsOnly,
                RealInputFormatter(centavos: false),
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Min',
              ),
              initialValue: filter.minPrice != null ? filter.minPrice.toString() : '',
              onSaved: (s) {
                filter.minPrice = _getNumber(s);
              },
              validator: (s) {
                return _validator(s) == true ? 'Digite um numero valido' : null;
              }),
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 1,
          child: TextFormField(
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: false),
              inputFormatters: [
                WhitelistingTextInputFormatter.digitsOnly,
                RealInputFormatter(centavos: false),
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Max',
              ),
              initialValue: filter.maxPrice != null ? filter.maxPrice.toString() : '',
              onSaved: (s) {
                filter.maxPrice = _getNumber(s);
              },
              validator: (s) {
                return _validator(s) == true ? 'Digite um numero valido' : null;
              }),
        ),
      ],
    );
  }
}
