import 'package:alcool_ou_gasolina/widgets/input.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  var maskGas = new MoneyMaskedTextController();
  var maskAlc = new MoneyMaskedTextController();
  var bisy = false;
  Function submitFunc;

  SubmitForm({
    @required this.maskGas,
    @required this.maskAlc,
    @required this.bisy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Gasolina",
            ctrl: maskGas,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Alcool",
            ctrl: maskAlc,
          ),
        ),

        LoadingButton(
            bisy: bisy,
            func: submitFunc,
            text: 'CALCULAR',
            invert: false,
          ),
      ],
      
    );
  }
}