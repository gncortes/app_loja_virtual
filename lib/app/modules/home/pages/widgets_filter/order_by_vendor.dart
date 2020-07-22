import 'package:app_loja_virtual/app/modules/home/models/order_by.dart';
import 'package:flutter/material.dart';
import 'order_by_option.dart';

class OrderByVendor extends StatelessWidget {
  final FormFieldSetter<int> onSaved;
  final int initialValue;

  OrderByVendor({Key key, this.onSaved, this.initialValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormField<int>(
      initialValue: initialValue,
      onSaved: onSaved,
      builder: (state) {
        return Row(
          children: <Widget>[
            OrderByOption(
              height: 50,
              width: 130,
              label: "Particular",
              isSelected: state.value & VENDOR_TYPE_PARTICULAR != 0,
              onPressed: () {
                //Condicoes 
                bool thisSelected =
                    state.value & VENDOR_TYPE_PARTICULAR != 0;
                bool otherSelected =
                    state.value & VENDOR_TYPE_PROFESSIONAL != 0;
                bool twoSelected = thisSelected && otherSelected;
                //Variaveis 
                var _removeThisFlag = state.value & ~VENDOR_TYPE_PARTICULAR;
                var _setOtherFlagOption = VENDOR_TYPE_PROFESSIONAL;
                var _setThisFlag = state.value | VENDOR_TYPE_PARTICULAR;
                //funcao para mudar estado das flags
                twoSelected
                    ? state.didChange(_removeThisFlag)
                    : thisSelected
                        ? state.didChange(_setOtherFlagOption)
                        : state.didChange(
                            _setThisFlag);
                }),
            SizedBox(
              width: 20,
            ),
            OrderByOption(
                height: 50,
                width: 130,
                label: "Profissional",
                isSelected: state.value & VENDOR_TYPE_PROFESSIONAL != 0,
                onPressed: () {
                  //Condicoes
                  bool thisSelected =
                      state.value & VENDOR_TYPE_PROFESSIONAL != 0;
                  bool otherSelected =
                      state.value & VENDOR_TYPE_PARTICULAR != 0;
                  bool twoSelected = thisSelected && otherSelected;
                  //Variaveis 
                  var _removeThisFlag = state.value & ~VENDOR_TYPE_PROFESSIONAL;
                  var _setOtherFlagOption = VENDOR_TYPE_PARTICULAR;
                  var _setThisFlag = state.value | VENDOR_TYPE_PROFESSIONAL;
                  //funcao para mudar estado das flags
                  twoSelected
                    ? state.didChange(_removeThisFlag)
                    : thisSelected
                        ? state.didChange(_setOtherFlagOption)
                        : state.didChange(
                            _setThisFlag);
                }),
          ],
        );
      });
  }
}
