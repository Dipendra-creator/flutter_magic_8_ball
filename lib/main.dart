import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // Centering the Title in App Bar
          centerTitle: true,

          // Providing Title
          title: Text("Magic 8 Ball"),

          // Setting Up Background Color of AppBar
          backgroundColor: Colors.lightBlue[900],
        ),

        // Setting Up Background Color of Scaffold
        backgroundColor: Colors.lightBlue[700],

        // Setting Up Body
        body: BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  // ignore: non_constant_identifier_names
  var Number = 1;
  void setStateNumber(num){
    int num = Random().nextInt(5) + 1;
    setState(() {
      Number = num;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: (){
            setStateNumber(5);
          },
          child: Image.asset('images/ball$Number.png'),
        ),
      ),
    );
  }
}
