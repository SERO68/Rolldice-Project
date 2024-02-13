import 'setting.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model.dart';
import 'package:url_launcher/url_launcher.dart';

class Thirdscreen extends StatefulWidget {
  const Thirdscreen({super.key});

  @override
  State<Thirdscreen> createState() => _ThirdscreenState();
}

class _ThirdscreenState extends State<Thirdscreen> {
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
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Settings()),
                          );
                        },
                        child: const Icon(
                          Icons.settings,
                          size: 40,
                          color: Colors.white,
                        )),
                    const TextButton(
                        onPressed: launchURL,
                        child: Icon(
                          Icons.mail,
                          size: 40,
                          color: Colors.white,
                        )),
                  ],
                ),
                model.one,
              ]),
            ),
          ),
        );
      }),
    );
  }
}

launchURL() async {
  launchUrl(
    Uri.parse('https://github.com/SERO68'),
  );
}
