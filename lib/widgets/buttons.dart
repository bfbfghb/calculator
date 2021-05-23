import 'package:flutter/material.dart';

import '../VarController.dart';

class Button extends StatelessWidget {
  final texto;
  final onPressed;
  final height;
  final width;
  final buttonStyle;

  const Button({Key key, 
   @required this.texto,
   @required this.onPressed, 
   @required this.height, 
   @required this.width,
   this.buttonStyle
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, 
      height: height, 
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: onPressed, 
        child: Text(texto, style: TextStyle(fontSize: Var_Controller.fontsize)),)
    );
  }
}