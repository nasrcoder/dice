import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.tealAccent,
          appBar: AppBar(
            title: Text(
              'Dice App',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
            ),
            centerTitle: true,
            backgroundColor: Colors.teal,
          ),
          body: DicePage(),
        ),
      ),
    );

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftimage = 1;
  int rightimage = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftimage = Random().nextInt(5) + 1;
                });
                print('MNA  $leftimage');
              },
              child: Image.asset('images/dice$leftimage.png'), //  method 1
            ),
          ),
          SizedBox(
            child: Container(
              width: 20,
              height: 20,
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightimage = Random().nextInt(5) + 1;
                });
                print('Dice $rightimage');
              },
              child: Image.asset('images/dice$rightimage.png'),
            ),
          ),
        ],
      ),
    );
  }
}
