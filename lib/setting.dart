import 'dart:developer';
import 'package:diceroll/help.dart';
import 'package:diceroll/thirdscreen.dart';

import 'model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

var color1 = const Color.fromRGBO(192, 26, 26, 0.888);
var color2 = const Color.fromRGBO(131, 17, 17, 0.875);

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Model>(builder: (context, model, child) {
        return DecoratedBox(
          decoration: BoxDecoration(
            gradient: Provider.of<Model>(context).gradient,
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Thirdscreen()),
                                );
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                size: 40,
                                color: Colors.white,
                              )),
                          const Text(
                            'Settings',
                            style: TextStyle(
                                fontFamily: 'font2',
                                fontSize: 40,
                                color: Colors.white),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Help()),
                                );
                              },
                              child: const Icon(
                                Icons.question_mark,
                                size: 40,
                                color: Colors.white,
                              )),
                        ]),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Change Background',
                      style: TextStyle(
                          fontFamily: 'ibm',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Customebutton2(model.changeGradient1, model.gradient1),
                        Customebutton2(model.changeGradient2, model.gradient2),
                        Customebutton2(model.changeGradient3, model.gradient3),
                        Customebutton2(model.changeGradient4, model.gradient4),
                        Customebutton2(model.changeGradient5, model.gradient5),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Change Dice Numper',
                      style: TextStyle(
                          fontFamily: 'ibm',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Customebutton3(
                            model.changeColor1, 0, model.changeDice1, 'Dice 1'),
                        Customebutton3(
                            model.changeColor2, 1, model.changeDice2, 'Dice 2'),
                        Customebutton3(
                            model.changeColor3, 2, model.changeDice3, 'Dice 3'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Customebutton3(
                            model.changeColor4, 3, model.changeDice4, 'Dice 4'),
                        Customebutton3(
                            model.changeColor5, 4, model.changeDice5, 'Dice 5'),
                        Customebutton3(
                            model.changeColor6, 5, model.changeDice6, 'Dice 6'),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Column(children: [
                      Text(
                        'About',
                        style: TextStyle(
                            fontFamily: 'font2',
                            fontSize: 40,
                            color: Colors.white),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Roll Dice is a simple and fun app \nit lets you roll virtual dice on your device.\n Roll Dice is the app for you. ',
                        style: TextStyle(
                            fontFamily: 'cairo',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ]),
                    const SizedBox(
                      height: 1,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class Customebutton3 extends StatefulWidget {
  const Customebutton3(
    this.changeColor,
    this.num,
    this.changedice,
    this.text, {
    super.key,
  });
  final String text;
  final void Function() changedice;
  final int num;
  final void Function() changeColor;

  @override
  State<Customebutton3> createState() => _Customebutton3State();
}

class _Customebutton3State extends State<Customebutton3> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Model>(
      builder: (context, model, child) {
        return ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  return model.colorlist1[widget.num];
                },
              ),
              fixedSize: const MaterialStatePropertyAll(Size(85, 20))),
          onPressed: () {
            widget.changedice();
            widget.changeColor();
          },
          child: Text(
            widget.text,
            style: const TextStyle(
              fontSize: 14,
              fontFamily: 'cairo',
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}

class Customebutton2 extends StatelessWidget {
  const Customebutton2(
    this.changegradiant,
    this.gradientOfModel, {
    super.key,
  });

  final Gradient gradientOfModel;
  final void Function() changegradiant;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: Consumer<Model>(builder: (context, model, child) {
        return TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            fixedSize: MaterialStateProperty.all(const Size(60, 60)),
          ),
          onPressed: () {
            log('click');
            changegradiant();
          },
          child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                gradient: gradientOfModel,
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
              )),
        );
      }),
    );
  }
}

