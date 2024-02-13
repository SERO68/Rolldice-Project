import 'package:diceroll/thirdscreen.dart';
import 'package:flutter/material.dart';

class Secoundscreen extends StatelessWidget {
  const Secoundscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(25.0)),
                Image(
                  image: AssetImage('images/Secound.jpg'),
                  width: 320,
                ),
                Padding(padding: EdgeInsets.all(37.0)),
                Text(
                  'Ready to start your app journey?',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'font2'),
                ),
                SizedBox(
                  height: 170,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Circle(Color.fromRGBO(211, 67, 67, 0.49)),
                        SizedBox(
                          width: 5,
                        ),
                        Circle(Colors.red),
                      ],
                    ),
                    Customebutton1('Done', Thirdscreen())
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Customebutton1 extends StatelessWidget {
  const Customebutton1(
    this.text,
    this.screen, {
    super.key,
  });
  final String text;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        style: const ButtonStyle(
          fixedSize: MaterialStatePropertyAll(Size(90, 50)),
        ),
        child: Text(
          text,
          style: const TextStyle(fontFamily: 'font1'),
        ));
  }
}

class Circle extends StatelessWidget {
  const Circle(
    this.color1, {
    super.key,
  });
  final Color color1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: color1),
      width: 10,
      height: 10,
    );
  }
}
