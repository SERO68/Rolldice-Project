import 'package:flutter/material.dart';
import 'secoundscreen.dart';
import 'thirdscreen.dart';

class Decoratedboxcustome extends StatelessWidget {
  const Decoratedboxcustome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(color: Colors.white),
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(25.0)),
              Image(
                image: AssetImage('images/first.jpg'),
                width: 320,
              ),
              Padding(padding: EdgeInsets.all(37.0)),
              Text(
                'Welcome to My First App',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'font2'),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Text(
                'This is an app I used to review what I have learnt',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                    fontFamily: 'font1'),
              ),
              SizedBox(
                height: 130,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Customebutton1('Skip', Thirdscreen()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Circle(Colors.red),
                      SizedBox(
                        width: 5,
                      ),
                      Circle(Color.fromRGBO(211, 67, 67, 0.49)),
                    ],
                  ),
                  Customebutton1('Next', Secoundscreen())
                ],
              ),
            ],
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
      ),
    );
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
