import 'package:flutter/cupertino.dart';
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
        body: DiceePage(),
      ),
    ),
  );
}

class DiceePage extends StatelessWidget {
  const DiceePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(

        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Expanded(

              child: Image.asset('images/dice1.png'),
      ),
          ),
          Expanded(
            child: Image.asset('images/dice1.png'),
          ),
        ],
      ),
    );
  }
}
