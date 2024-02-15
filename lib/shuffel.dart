import 'package:flutter/material.dart';
import 'dart:math';

var random = Random();

class Shuffel extends StatefulWidget {
  const Shuffel({super.key});

  @override
  State<Shuffel> createState() => _ShuffelState();
}

class _ShuffelState extends State<Shuffel> {

  var activedice1 = 1;
  String name1 = 'dice';
  bool imagechange1 = false;

  var sum = 0;
  
  void clickedimage1() {
    setState(() {
      if (imagechange1 == false) {
        name1 = 'block';
        imagechange1 = !imagechange1;
      } else {
        name1 = 'dice';
        imagechange1 = !imagechange1;
      }
    });
  }

  void rolldice() {
    setState(() {
      if (imagechange1 == false) {
        activedice1 = random.nextInt(6) + 1;
      }

      sum = activedice1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        const Padding(padding: EdgeInsets.all(15)),
        const SizedBox(
          height: 70,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextButton(
            onPressed: clickedimage1,
            child: Image(
              image: AssetImage('images/$name1-$activedice1.png'),
              width: 260,
            ),
          ),
        ]),
        const SizedBox(
          height: 110,
        ),
        ElevatedButton(
          onPressed: rolldice,
          style: const ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(200, 50))),
          child: const Text(
            'Roll',
            style: TextStyle(fontFamily: 'cairo', fontSize: 30),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(children: [
          Text(
            'Points = $sum',
            style: const TextStyle(
                fontFamily: 'cairo', fontSize: 18, color: Colors.white),
          )
        ]),
      ],
    ));
  }
}
