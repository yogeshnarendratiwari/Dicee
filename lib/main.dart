import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
              child: Text(
            'DICEE',
          )),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice$leftDice.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice$rightDice.png'),
              ),
            ),
          ],
        ),

     const  SizedBox(
         height : 100.0,
       ),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SizedBox(
             width: 150.0,
             height: 50.0,
             child: ElevatedButton(onPressed: (){
                 setState(() {
                   leftDice = Random().nextInt(6)+1;
                   rightDice = Random().nextInt(6)+1;
                 });
             }, child: const Text('Roll Both Dices'),

               style: ButtonStyle
                 (
                 backgroundColor: MaterialStateProperty.all(Colors.black),
                 shadowColor: MaterialStateProperty.all(Colors.white),
                 foregroundColor: MaterialStateProperty.all(Colors.white),

               ),


             ),
           )
         ],
       ),
        SizedBox(
          height: 50.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 170.0,
              height: 50.0,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  leftDice = Random().nextInt(6)+1;
                });
              }, child: const Text('Roll Only Left Dice'),

                style: ButtonStyle
                  (
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shadowColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.white),

                ),


              ),
            ),

            SizedBox(
              width: 10.0,
            ),
            SizedBox(
              width: 170.0,
              height: 50.0,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  rightDice = Random().nextInt(6)+1;
                });
              }, child: const Text('Roll Only Right Dice'),

                style: ButtonStyle
                  (
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shadowColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.white),

                ),


              ),
            )
          ],
        )
      ],
    );
  }
}

