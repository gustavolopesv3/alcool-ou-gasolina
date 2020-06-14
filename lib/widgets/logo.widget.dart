import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 60,),
          Image.asset(
            'assets/images/aog-white.png',
            height: 90,

          ),
          SizedBox(
            height: 10,
            ),
          Text(
            "Alcool ou Gasolina",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Big Sholders Display"
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
            ),
      ],      
    );
  }
}