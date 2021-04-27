import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  int resulinteiro = 0;
  double resuldouble = 0.0;
  var resultado = "0.0";
  int n1 = 0;
  int n2 = 0;
  bool num1 = false;
  bool num2 = false;
  String calc;      
  double widthbutton = 98.1;
  double heightbutton = 100;
  double fontsize = 30;
  Color colorSinais = Colors.blueGrey;
  Color colorNumeros = Colors.blue;
 //void atualizarResultado(resultado) {  setState(() { resul = resultado; });  }
 verificar(){
    if(num1 == true && num2 == true && calc != ""){
            num1 = false;
            num2 = false;
            setState(() {
              resultado = "$n1 $calc $n2";
            });
          }
    }
  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
    theme: ThemeData.dark(),
    home: Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.black,
        title: Center(child: Text("Calculator", style: TextStyle(color: Colors.white, fontSize: 30),)),
        ),
      body: Container(
      child: Column(
        children: [         
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey,
                width: 392,
                height: heightbutton*1.58,
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: resultado, style: TextStyle(fontSize: 100)),),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(width: widthbutton, height: heightbutton, child: ElevatedButton(onPressed: () {setState(() {resultado = "0";});;verificar();}, child: Text("C", style: TextStyle(fontSize: fontsize)),)),
            Container(width: widthbutton, height: heightbutton, child: ElevatedButton(onPressed: () {if(n1 != 0){n2 = 8;num2 = true;}else {n1 =  8;num1 = true;}verificar();}, child: Text("8", style: TextStyle(fontSize: fontsize)), style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorNumeros)),)),
            Container(width: widthbutton, height: heightbutton, child: ElevatedButton(onPressed: () {if(n1 != 0){n2 = 9;num2 = true;}else {n1 =  9;num1 = true;}verificar();}, child: Text("9", style: TextStyle(fontSize: fontsize)), style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorNumeros)))),
            Container(width: widthbutton, height: heightbutton, child: ElevatedButton(onPressed: () {calc = '+';verificar();}, child: Text("+", style: TextStyle(fontSize: fontsize)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorSinais)))),
          ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(width: widthbutton, height: heightbutton, child: ElevatedButton(onPressed: () {if(n1 != 0){n2 = 7;num2 = true;}else {n1 =  7;num1 = true;}verificar();}, child: Text("7", style: TextStyle(fontSize: fontsize)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorNumeros)))),
            Container(width: widthbutton, height: heightbutton, child: ElevatedButton(onPressed: () {if(n1 != 0){n2 = 6;num2 = true;}else {n1 = 6;num1 = true;}verificar();}, child: Text("6", style: TextStyle(fontSize: fontsize)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorNumeros)))),
            Container(width: widthbutton, height: heightbutton, child: ElevatedButton(onPressed: () {if(n1 != 0){n2 = 5;num2 = true;}else {n1 = 5;num1 = true;}verificar();}, child: Text("5", style: TextStyle(fontSize: fontsize)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorNumeros)))),
            Container(width: widthbutton, height: heightbutton, child: ElevatedButton(onPressed: () {calc = '-';}, child: Text("-", style: TextStyle(fontSize: fontsize)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorSinais)))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(width: widthbutton, height: heightbutton, child: ElevatedButton(onPressed: () {if(n1 != 0){n2 = 4;num2 = true;}else {n1 = 4;num1 = true;}verificar();}, child: Text("4", style: TextStyle(fontSize: fontsize)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorNumeros)))),
            Container(width: widthbutton, height: heightbutton, child: ElevatedButton(onPressed: () {if(n1 != 0){n2 = 3;num2 = true;}else {n1 = 3;num1 = true;}verificar();}, child: Text("3", style: TextStyle(fontSize: fontsize)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorNumeros)))),
            Container(width: widthbutton, height: heightbutton, child: ElevatedButton(onPressed: () {if(n1 != 0){n2 = 2;num2 = true;}else {n1 = 2;num1 = true;}verificar();}, child: Text("2", style: TextStyle(fontSize: fontsize)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorNumeros)))),
            Container(width: widthbutton, height: heightbutton, child: ElevatedButton(onPressed: () {calc = '/';}, child: Text("/", style: TextStyle(fontSize: fontsize)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorSinais)))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(width: widthbutton, height: heightbutton, child: ElevatedButton(onPressed: () {if(n1 != 0){n2 = 1;num2 = true;}else {n1 = 1;num1 = true;}verificar();}, child: Text("1", style: TextStyle(fontSize: fontsize)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorNumeros)))),
            Container(width: widthbutton*2, height: heightbutton, child: ElevatedButton(onPressed: () {if(n1 != 0){n2 = 0;num2 = true;}else {n1 = 0;num1 = true;}verificar();}, child: Text("0", style: TextStyle(fontSize: fontsize)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorNumeros)))),
            Container(width: widthbutton, height: heightbutton, child: ElevatedButton(onPressed: () {calc = "*";}, child: Text("*", style: TextStyle(fontSize: fontsize)), style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(colorSinais)),)),
            ],
          ),
          Row(
            children: [
              Container(width: widthbutton*4, height: heightbutton, child: ElevatedButton(onPressed: () {
              if (calc == '+') {
                resulinteiro = (n1 + n2);
                setState(() {
                  resultado = resulinteiro.toString();
                });         
              }
              else if(calc == '-')
              {
                resulinteiro = (n1 - n2);
                setState(() {
                  resultado = resulinteiro.toString();
                }); 
              } 
              else if(calc == '/')
              {
                resuldouble = (n1 / n2);
                setState(() {
                  resultado = resuldouble.toStringAsFixed(2);
                }); 
              }
              else if(calc == '*')
              {
                resulinteiro = (n1 * n2);
                setState(() {
                  resultado = resulinteiro.toStringAsFixed(2);
                }); 
              }
              print("primeiro numero com o valor de: $n1");
              print("segundo numero com o valor de: $n2");
              n1 = 0;
              n2 = 0;
              calc = "";
            }, child: Text("=", style: TextStyle(fontSize: fontsize)), style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),),
            ),
            ],
          )
          ],
          ),
        )
      )
    );
  }
} 
