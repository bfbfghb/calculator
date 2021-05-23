import 'package:flutter/material.dart';
import 'VarController.dart';
import 'widgets/buttons.dart';

main() {
  runApp(Principal_Page());
}

class Principal_Page extends StatefulWidget {
  @override
  _Principal_PageState createState() => _Principal_PageState();
}

class _Principal_PageState extends State<Principal_Page> {
  verificar(){
    if(Var_Controller.num1 == true && Var_Controller.num2 == true && Var_Controller.calc != ""){
            Var_Controller.num1 = false;
            Var_Controller.num2 = false;
            setState(() {
              Var_Controller.resultado = "$Var_Controller.n1 $Var_Controller.calc $Var_Controller.n2";
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
                height: Var_Controller.heightbutton*1.58,
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: Var_Controller.resultado, style: TextStyle(fontSize: 100)),),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [  
            Button(onPressed: () {setState(() {Var_Controller.resultado = "0";});verificar();}, texto: "C", height: Var_Controller.heightbutton, width: Var_Controller.widthbutton,),
            Button(onPressed: () {if(Var_Controller.n1 != 0){Var_Controller.n2 = 8;Var_Controller.num2 = true;}else {Var_Controller.n1 =  8;Var_Controller.num1 = true;}verificar();}, texto: "8",height: Var_Controller.heightbutton, width: Var_Controller.widthbutton),
            Button(onPressed: () {if(Var_Controller.n1 != 0){Var_Controller.n2 = 9;Var_Controller.num2 = true;}else {Var_Controller.n1 =  9;Var_Controller.num1 = true;}verificar();}, texto: "9",height: Var_Controller.heightbutton, width: Var_Controller.widthbutton),
            Button(onPressed: () {Var_Controller.calc = '+';}, texto: "+",height: Var_Controller.heightbutton, width: Var_Controller.widthbutton, buttonStyle: ElevatedButton.styleFrom(primary: Colors.amber)),
          ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Button(onPressed: () {if(Var_Controller.n1 != 0){Var_Controller.n2 = 7;Var_Controller.num2 = true;}else {Var_Controller.n1 =  7;Var_Controller.num1 = true;}verificar();}, texto: "7",height: Var_Controller.heightbutton, width: Var_Controller.widthbutton),
            Button(onPressed: () {if(Var_Controller.n1 != 0){Var_Controller.n2 = 6;Var_Controller.num2 = true;}else {Var_Controller.n1 = 6;Var_Controller.num1 = true;}verificar();}, texto: "6",height: Var_Controller.heightbutton, width: Var_Controller.widthbutton),
            Button(onPressed: () {if(Var_Controller.n1 != 0){Var_Controller.n2 = 5;Var_Controller.num2 = true;}else {Var_Controller.n1 = 5;Var_Controller.num1 = true;}verificar();}, texto: "5",height: Var_Controller.heightbutton, width: Var_Controller.widthbutton),
            Button(onPressed: () {Var_Controller.calc = '-';}, texto: "-",height: Var_Controller.heightbutton, width: Var_Controller.widthbutton, buttonStyle: ElevatedButton.styleFrom(primary: Colors.amber)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Button(onPressed: () {if(Var_Controller.n1 != 0){Var_Controller.n2 = 4;Var_Controller.num2 = true;}else {Var_Controller.n1 = 4;Var_Controller.num1 = true;}verificar();}, texto: "4",height: Var_Controller.heightbutton, width: Var_Controller.widthbutton),
            Button(onPressed: () {if(Var_Controller.n1 != 0){Var_Controller.n2 = 3;Var_Controller.num2 = true;}else {Var_Controller.n1 = 3;Var_Controller.num1 = true;}verificar();}, texto: "3",height: Var_Controller.heightbutton, width: Var_Controller.widthbutton),
            Button(onPressed: () {if(Var_Controller.n1 != 0){Var_Controller.n2 = 2;Var_Controller.num2 = true;}else {Var_Controller.n1 = 2;Var_Controller.num1 = true;}verificar();}, texto: "2",height: Var_Controller.heightbutton, width: Var_Controller.widthbutton),
            Button(onPressed: () {Var_Controller.calc = '/';}, texto: "/",height: Var_Controller.heightbutton, width: Var_Controller.widthbutton, buttonStyle: ElevatedButton.styleFrom(primary: Colors.amber)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Button(onPressed: () {if(Var_Controller.n1 != 0){Var_Controller.n2 = 1;Var_Controller.num2 = true;}else {Var_Controller.n1 = 1;Var_Controller.num1 = true;}verificar();}, texto: "1",height: Var_Controller.heightbutton, width: Var_Controller.widthbutton),
            Button(onPressed: () {if(Var_Controller.n1 != 0){Var_Controller.n2 = 0;Var_Controller.num2 = true;}else {Var_Controller.n1 = 0;Var_Controller.num1 = true;}verificar();}, texto: "0",height: Var_Controller.heightbutton, width: Var_Controller.widthbutton*2),
            Button(onPressed: () {Var_Controller.calc = "*";}, texto: "*", height: Var_Controller.heightbutton, width: Var_Controller.widthbutton, buttonStyle: ElevatedButton.styleFrom(primary: Colors.amber)),
            ],
          ),
          Row(
            children: [
              Button(
                onPressed: () {
              if (Var_Controller.calc == '+') {
                Var_Controller.resulinteiro = (Var_Controller.n1 + Var_Controller.n2);
                setState(() {
                  Var_Controller.resultado = Var_Controller.resulinteiro.toString();
                });         
              }
              else if(Var_Controller.calc == '-')
              {
                Var_Controller.resulinteiro = (Var_Controller.n1 - Var_Controller.n2);
                setState(() {
                  Var_Controller.resultado = Var_Controller.resulinteiro.toString();
                }); 
              } 
              else if(Var_Controller.calc == '/')
              {
                Var_Controller.resuldouble = (Var_Controller.n1 / Var_Controller.n2);
                setState(() {
                  Var_Controller.resultado = Var_Controller.resuldouble.toStringAsFixed(2);
                }); 
              }
              else if(Var_Controller.calc == '*')
              {
                Var_Controller.resulinteiro = (Var_Controller.n1 * Var_Controller.n2);
                setState(() {
                  Var_Controller.resultado = Var_Controller.resulinteiro.toStringAsFixed(2);
                }); 
              }
              print ("primeiro numero com o valor de: ${Var_Controller.n1}");
              print ("segundo numero com o valor de: ${Var_Controller.n2}");
              Var_Controller.n1 = 0;
              Var_Controller.n2 = 0;
              Var_Controller.calc = "";
            }, texto: "=",height: Var_Controller.heightbutton, width: Var_Controller.widthbutton*4, buttonStyle: ElevatedButton.styleFrom(primary: Colors.black),),
            ],    
          ),
          ])
        )
      ),
    );
  }
}