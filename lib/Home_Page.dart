import 'package:calculator/widgets/buttons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          children: [
          AppBar(
                backgroundColor: Colors.blue,
                title: Center(child: Text("Calculator", style: TextStyle(color: Colors.white, fontSize: 17),)),
            ),
            SizedBox(height: 150),
            Container(
              width: 150,
              height: 150,
              child: ButtonWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
