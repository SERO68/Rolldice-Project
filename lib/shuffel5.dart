import 'package:flutter/material.dart';
import 'dart:math';

var random = Random();

class Shuffel5 extends StatefulWidget {
  const Shuffel5({super.key});

  @override
  State<Shuffel5> createState() => _ShuffelState();
}

class _ShuffelState extends State<Shuffel5> {
  var activedice1 = 1;
  var activedice2 = 1;
  var activedice3 = 1;
  var activedice4 = 1;
  var activedice5 = 1;

  String name1 = 'dice';
  String name2 = 'dice';
  String name3 = 'dice';
  String name4 = 'dice';
  String name5 = 'dice';

  bool imagechange1 = false;
  bool imagechange2 = false;
  bool imagechange3 = false;
  bool imagechange4 = false;
  bool imagechange5 = false;

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

  void clickedimage4() {
    setState(() {
      if (imagechange4 == false) {
        name4 = 'block';
        imagechange4 = !imagechange4;
      } else {
        name4 = 'dice';
        imagechange4 = !imagechange4;
      }
    });
  }

  void clickedimage5() {
    setState(() {
      if (imagechange5 == false) {
        name5 = 'block';
        imagechange5 = !imagechange5;
      } else {
        name5 = 'dice';
        imagechange5 = !imagechange5;
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
      if (imagechange4 == false) {
        activedice4 = random.nextInt(6) + 1;
      }
      if (imagechange5 == false) {
        activedice5 = random.nextInt(6) + 1;
      }

      sum = activedice1 + activedice2 + activedice3 + activedice4 + activedice5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(padding: EdgeInsets.all(15)),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextButton(
            onPressed: clickedimage1,
            child: Image(
              image: AssetImage('images/$name1-$activedice1.png'),
              width: 130,
            ),
          ),
          TextButton(
            onPressed: clickedimage2,
            child: Image(
              image: AssetImage('images/$name2-$activedice2.png'),
              width: 130,
            ),
          ),
        ]),
                  const SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 1,
            ),
            TextButton(
              onPressed: clickedimage5,
              child: Image(
                image: AssetImage('images/$name5-$activedice5.png'),
                width: 130,
              ),
            ),
          ],
        ),
                  const SizedBox(height: 10),

        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextButton(
            onPressed: clickedimage3,
            child: Image(
              image: AssetImage('images/$name3-$activedice3.png'),
              width: 120,
            ),
          ),
          TextButton(
            onPressed: clickedimage4,
            child: Image(
              image: AssetImage('images/$name4-$activedice4.png'),
              width: 120,
            ),
          ),
        ]),
        const SizedBox(
          height: 20,
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: rolldice,
              style: const ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(200, 50))),
              child: const Text(
                'Roll',
                style: TextStyle(fontFamily: 'cairo', fontSize: 30),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(children: [
          Text(
            'Points = $sum',
            style: const TextStyle(
                fontFamily: 'Cairo', fontSize: 18, color: Colors.white),
          )
        ]),
      ],
    ));
  }
}
