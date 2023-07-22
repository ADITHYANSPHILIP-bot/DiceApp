import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text('The Dice App'),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lftimg = 1;
  int rgtimg = 1;
  void rdmGen(){
    setState(() {
      lftimg = Random().nextInt(6)+ 1;
      rgtimg = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ElevatedButton(
              onPressed: (){
                rdmGen();
              },
              child: Image(
                image: AssetImage('image/dice$lftimg.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ElevatedButton(
              onPressed: () {
                rdmGen();
              },
              child: Image(
                image: AssetImage('image/dice$rgtimg.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
