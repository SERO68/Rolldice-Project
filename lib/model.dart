import 'package:flutter/material.dart';
import 'dart:developer';
import 'shuffel.dart';
import 'shuffel2.dart';

import 'shuffel3.dart';

import 'shuffel4.dart';

import 'shuffel5.dart';

import 'shuffel6.dart';

class Model extends ChangeNotifier {
  Center _one = const Center(
    child: Shuffel4(),
  );

  Center center1 = const Center(
    child: Shuffel(),
  );

  Center center2 = const Center(
    child: Shuffel2(),
  );

  Center center3 = const Center(
    child: Shuffel3(),
  );

  Center center4 = const Center(
    child: Shuffel4(),
  );

  Center center5 = const Center(
    child: Shuffel5(),
  );

  Center center6 = const Center(
    child: Shuffel6(),
  );

  Center get one => _one;

  void changeDice1() {
    Center newCenter = center1;
    _one = newCenter;
    notifyListeners();
  }

  void changeDice2() {
    Center newCenter = center2;
    _one = newCenter;
    notifyListeners();
  }

  void changeDice3() {
    Center newCenter = center3;
    _one = newCenter;
    notifyListeners();
  }

  void changeDice4() {
    Center newCenter = center4;
    _one = newCenter;
    notifyListeners();
  }

  void changeDice5() {
    Center newCenter = center5;
    _one = newCenter;
    notifyListeners();
  }

  void changeDice6() {
    Center newCenter = center6;
    _one = newCenter;
    notifyListeners();
  }

  ///////////////////////////////////////////////////////////////////////
  List<bool> list = List.filled(6, false);
  List<Color> colorList =
      List.filled(6, const Color.fromARGB(255, 255, 255, 255));

  Color defaultColor = const Color.fromARGB(255, 255, 255, 255);
  Color clickedColor = const Color.fromARGB(209, 185, 185, 185);

  List<Color> get colorlist1 => colorList;

  int lastClickedIndex = -1;

  void changeColor1() {
    if (lastClickedIndex != -1 && lastClickedIndex != 0) {
      list[lastClickedIndex] = false;
      colorList[lastClickedIndex] = defaultColor;
    }

    list[0] = !list[0];
    colorList[0] = list[0] ? clickedColor : defaultColor;
    lastClickedIndex = 0;

    notifyListeners();
  }

  void changeColor2() {
    if (lastClickedIndex != -1 && lastClickedIndex != 1) {
      list[lastClickedIndex] = false;
      colorList[lastClickedIndex] = defaultColor;
    }
    list[1] = !list[1];
    colorList[1] = list[1] ? clickedColor : defaultColor;
    lastClickedIndex = 1;
    notifyListeners();
  }

  void changeColor3() {
    if (lastClickedIndex != -1 && lastClickedIndex != 2) {
      list[lastClickedIndex] = false;
      colorList[lastClickedIndex] = defaultColor;
    }
    list[2] = !list[2];
    colorList[2] = list[2] ? clickedColor : defaultColor;
    lastClickedIndex = 2;
    notifyListeners();
  }

  void changeColor4() {
    if (lastClickedIndex != -1 && lastClickedIndex != 3) {
      list[lastClickedIndex] = false;
      colorList[lastClickedIndex] = defaultColor;
    }
    list[3] = !list[3];
    colorList[3] = list[3] ? clickedColor : defaultColor;
    lastClickedIndex = 3;
    notifyListeners();
  }

  void changeColor5() {
    if (lastClickedIndex != -1 && lastClickedIndex != 4) {
      list[lastClickedIndex] = false;
      colorList[lastClickedIndex] = defaultColor;
    }
    list[4] = !list[4];
    colorList[4] = list[4] ? clickedColor : defaultColor;
    lastClickedIndex = 4;
    notifyListeners();
  }

  void changeColor6() {
    if (lastClickedIndex != -1 && lastClickedIndex != 5) {
      list[lastClickedIndex] = false;
      colorList[lastClickedIndex] = defaultColor;
    }
    list[5] = !list[5];
    colorList[5] = list[5] ? clickedColor : defaultColor;
    lastClickedIndex = 5;
    notifyListeners();
  }

  ////////////////////////////////////////////////////////////////////////
  Gradient _gradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color.fromRGBO(224, 31, 45, 1), Color.fromRGBO(148, 60, 34, 1)],
  );
  Gradient gradient1 = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color.fromRGBO(224, 31, 45, 1), Color.fromRGBO(148, 60, 34, 1)],
  );

  Gradient gradient2 = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color.fromRGBO(126, 242, 157, 1), Color.fromRGBO(15, 104, 169, 1)],
  );
  Gradient gradient3 = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color.fromRGBO(0, 69, 142, 1), Color.fromRGBO(0, 3, 40, 1)],
  );
  Gradient gradient4 = const RadialGradient(
    colors: [
      Color.fromRGBO(192, 26, 26, 0.888),
      Color.fromRGBO(131, 17, 17, 0.875)
    ],
  );
  Gradient gradient5 = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color.fromRGBO(234, 152, 218, 1), Color.fromRGBO(91, 108, 249, 1)],
  );
  Gradient gradient6 = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromRGBO(238, 184, 109, 1),
      Color.fromRGBO(153, 70, 178, 1)
    ],
  );

  Gradient get gradient => _gradient;

  void changeGradient1() {
    Gradient newGradient = gradient1;

    _gradient = newGradient;
    log('$gradient');
    notifyListeners();
  }

  void changeGradient2() {
    Gradient newGradient = gradient2;
    log('$gradient');

    _gradient = newGradient;
    notifyListeners();
  }

  void changeGradient3() {
    Gradient newGradient = gradient3;
    log('$gradient');

    _gradient = newGradient;
    notifyListeners();
  }

  void changeGradient4() {
    Gradient newGradient = gradient4;

    log('$gradient');

    _gradient = newGradient;
    notifyListeners();
  }

  void changeGradient5() {
    Gradient newGradient = gradient5;
    log('$gradient');

    _gradient = newGradient;
    notifyListeners();
  }

  void changeGradient6() {
    Gradient newGradient = gradient6;
    log('$gradient');

    _gradient = newGradient;
    notifyListeners();
  }
}
