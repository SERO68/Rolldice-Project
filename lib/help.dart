import 'package:diceroll/setting.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Model>(
        builder: (context, model, child) {
          return DecoratedBox(
              decoration: BoxDecoration(
                gradient: Provider.of<Model>(context).gradient,
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Column(
                    children: [
                      Row(children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Settings()),
                              );
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              size: 40,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Help',
                          style: TextStyle(
                              fontFamily: 'font2',
                              fontSize: 45,
                              color: Colors.white),
                        ),
                      ]),
                      const SizedBox(
                        height: 25,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'How to use the app:',
                                      style: TextStyle(
                                          fontFamily: 'ibm',
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '1- To roll the dice, tap the Roll button \n\n2- To stop the dice from rolling, \ntap on any dice on the screen. \nTo resume the rolling, tap again. \n\n3- To change the number of dice on the screen,\ntap the Settings icon,\nthen use the Buttons to adjust the number.\n\n4- You can roll up to 6 dice at once.\n\n5- To change the theme of the app, \ntap the Settings icon,\nthen choose from the available themes.\n\n6- To visit the developer GitHub page,\n tap the Email icon. \n\nIf you have any questions, feedback,\nplease contact the developer \n example@gmail.com.',
                                      style: TextStyle(
                                          height: 1.5,
                                          fontFamily: 'cairo',
                                          fontSize: 16,
                                          color: Colors.white),
                                      softWrap: true,
                                    ),
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Text(
                                      'Thank you for using Roll Dice!',
                                      style: TextStyle(
                                          fontFamily: 'font2',
                                          fontSize: 24,
                                          color: Colors.white),
                                    )
                                  ])),
                        ),
                      ),
                    ],
                  )),
                ),
              ));
        },
      ),
    );
  }
}
