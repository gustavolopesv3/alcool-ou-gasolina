import 'dart:math';

import 'package:alcool_ou_gasolina/widgets/logo.widget.dart';
import 'package:alcool_ou_gasolina/widgets/submit-form.dart';
import 'package:alcool_ou_gasolina/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.deepPurple;
  var _maskGas = new MoneyMaskedTextController();
  var _maskAlc = new MoneyMaskedTextController();
  var _busy = false;
  var _completed = false;
  var _resultText = 'compensa utlizar alcool';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(milliseconds: 1200),
        color: _color,
        child: ListView(
        children: <Widget>[
          Logo(),
          _completed
            ? Success(
              result: _resultText,
              reset: reset,
            ):
          SubmitForm(
            maskAlc: _maskAlc,
            maskGas: _maskGas,
            submitFunc: calculate,
            bisy: _busy,

          ),
        ],
      ),
      )
    );
  }

  Future calculate() {
    double alc = double.parse(
      _maskAlc.text.replaceAll(new RegExp(r'[,.]'), '')) / 100 ;
    double gas = double.parse(
      _maskGas.text.replaceAll(new RegExp(r'[.,]'), '')) / 100;
    double res = alc / gas;

    setState(() {
      _color = Colors.red;
     _completed = false;
     _busy = true; 
    });

  return new Future.delayed(
    const Duration(seconds: 1),
    () => {
          setState(() {
          if (res >= 0.7) {
          _resultText = "Compensa utilizar Gasolina!";
        } else {
          _resultText = 'compensa utlizar Alcool';
        }

        _busy = false;
        _completed = true;
        })
    });
  }
    reset() {
      setState(() {
        _color = Colors.deepPurple;
       _maskGas = new MoneyMaskedTextController();
        _maskAlc = new MoneyMaskedTextController();
        _completed = false;
        _busy = false; 
      });       
    } 
  }