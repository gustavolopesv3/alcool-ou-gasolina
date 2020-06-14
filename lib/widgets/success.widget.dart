import 'package:flutter/material.dart';

import 'loading-button.widget.dart';

class Success extends StatefulWidget {
  var result = '';
  Function reset;

  Success({
    @required this.result,
    @required this.reset,
  });

  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25)
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 50,
                ),
                Text(
                  widget.result,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 40,
                    fontFamily: 'Big Sholders Display',
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,          
                ),
                LoadingButton(
                bisy: false,
                func: widget.reset,
                text: 'CALCULAR NOVAMENTE',
                invert: true,
          ),
              ],
            ),
          );
  }
}