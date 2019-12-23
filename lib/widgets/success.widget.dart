import 'package:flutter/material.dart';
import 'package:calculo_gasolina/widgets/loading-button.widget.dart';

class Success extends StatelessWidget {
  Function reset;
  var result = '';

  Success({
    @required this.reset,
    @required this.result,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 50,),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontFamily: 'Big Shoulders Display',
              fontSize: 40,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20,),
          LoadingButton(
            busy: false,
            text: 'CALCULAR NOVAMENTE',
            func: reset,
            invert: true,
          ),
        ],
      ),
    );
  }
}
