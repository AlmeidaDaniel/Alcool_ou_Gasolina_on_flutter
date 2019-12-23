import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:calculo_gasolina/widgets/loading-button.widget.dart';
import 'package:calculo_gasolina/widgets/success.widget.dart';
import 'package:calculo_gasolina/widgets/input.widget.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  Function submitFunc;
  var busy = false;

  SubmitForm({
    @required this.busy,
    @required this.alcCtrl,
    @required this.gasCtrl,
    @required this.submitFunc,
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(
            label: 'Gasolina',
            ctrl: gasCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(
            label: 'Álcool',
            ctrl: alcCtrl,
          ),
        ),
        LoadingButton(
          busy: busy,
          text: 'CALCULAR',
          func: submitFunc,
          invert: false,
        ),
      ],
    );
  }
}
