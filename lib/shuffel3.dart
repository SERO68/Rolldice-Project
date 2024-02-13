import 'package:flutter/material.dart';
import 'dart:math';

var random = Random();

class Shuffel3 extends StatefulWidget {
  const Shuffel3({super.key});

  @override
  State<Shuffel3> createState() => _ShuffelState();
}

class _ShuffelState extends State<Shuffel3> {
  var activedice1 = 1;
  var activedice2 = 1;
  var activedice3 = 1;

  String name1 = 'dice';
  String name2 = 'dice';
  String name3 = 'dice';

  bool imagechange1 = false;
  bool imagechange2 = false;
  bool imagechange3 = false;

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

  void clickedimage2() {
    setState(() {
      if (imagechange2 == false) {
        name2 = 'block';
        imagechange2 = !imagechange2;
      } else {
        name2 = 'dice';
        imagechange2 = !imagechange2;
      }
    });
  }

  void clickedimage3() {
    setState(() {
      if (imagechange3 == false) {
        name3 = 'block';
        imagechange3 = !imagechange3;
      } else {
        name3 = 'dice';
        imagechange3 = !imagechange3;
      }
    });
  }

  void rolldice() {
    setState(() {
      if (imagechange1 == false) {
        activedice1 = random.nextInt(6) + 1;
      }
      if (imagechange2 == false) {
        activedice2 = random.nextInt(6) + 1;
      }
      if (imagechange3 == false) {
        activedice3 = random.nextInt(6) + 1;
      }

      sum = activedice1 + activedice2 + activedice3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
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
              width: 135,
            ),
          ),
          TextButton(
            onPressed: clickedimage2,
            child: Image(
              image: AssetImage('images/$name2-$activedice2.png'),
              width: 135,
            ),
          ),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextButton(
            onPressed: clickedimage3,
            child: Image(
              image: AssetImage('images/$name3-$activedice3.png'),
              width: 135,
            ),
          ),
        ]),
        const SizedBox(
          height: 90,
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
