import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var bisy = false;
  var invert = false;
  Function func;
  var text = '';

  LoadingButton({
    @required this.bisy,
    @required this.func,
    @required this.invert,
    @required this.text
  });


  @override
  Widget build(BuildContext context) {
    return bisy
    
    ?Container(
      alignment: Alignment.center,
      height: 50,
      child: CircularProgressIndicator(
        backgroundColor: Colors.white,
      ),
    )
    
    :Container(
            margin: EdgeInsets.all(30),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: invert 
              ? Theme.of(context).primaryColor
              : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(
                60
              ),
            ),
            child:           
          FlatButton(
            child: Text(text,
            style: TextStyle(
              fontFamily: 'Big Sholders Display',
              color: invert ? Colors.white 
              : Theme.of(context).primaryColor,
              fontSize: 25,
              ),
              ),
            onPressed: func,
            ),
            );
  }
}