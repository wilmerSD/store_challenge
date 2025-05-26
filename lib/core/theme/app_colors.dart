import 'package:flutter/material.dart';

class AppColors {
  static Color primary(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? const Color.fromRGBO(27, 61, 38, 1) //dark
        : const Color.fromRGBO(27, 61, 38, 1); //light
  }

  static Color backgroundColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? const Color.fromRGBO(28, 28, 28, 1) //dark
        : const Color.fromARGB(255, 255, 255, 255); //light
  }

    static Color textBasic(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? const Color.fromARGB(255, 253, 253, 253) //dark
        : const Color.fromARGB(255, 0, 0, 0); //light
  }

   static Color cardList(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? const Color.fromRGBO(244, 231, 208, 1) //dark
        : const Color.fromRGBO(244, 231, 208, 1); //light
  }
  static Color textCardList(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? const Color.fromRGBO(42, 42, 41, 1) //dark
        : const Color.fromRGBO(42, 42, 41, 1); //light
  }


  static const Color primaryConst = Color.fromRGBO(27, 61, 38, 1);
  static const Color errorColor = Color.fromRGBO(231, 44, 49, 1.0);
  static const Color succesColor = Color.fromRGBO(103, 242, 3, 1);
  static const Color warningColor = Color.fromRGBO(242, 140, 3, 1.0);
  static const Color grayLight = Color.fromRGBO(230, 230, 241, 1);
  static const Color grayBlue = Color.fromRGBO(125, 126, 138, 1);
  static const Color radiusMap = Color.fromRGBO(38, 52, 113, 0.219);
  static const Color grey = Color.fromRGBO(71, 71, 73, 1);
  static const Color blueRecoverPass = Color.fromRGBO(0, 85, 184, 1);
  static const Color grayMiddle = Color.fromRGBO(147, 147, 178, 1);
  //----------------------------------------------------------------
  static const Color validationTimely = Color.fromRGBO(0, 196, 140, 1);
  static const Color validationMissing = Color.fromRGBO(231, 44, 49, 1);
  static const Color validationLate = Color.fromRGBO(239, 202, 102, 1);
  static const Color validationJustified = Color.fromRGBO(242, 140, 3, 1);

  //----------------------------------------------------------------
  static const Color degradedInitial = Color.fromARGB(255, 247, 85, 45);
  static const Color shadowButton = Color.fromARGB(137, 71, 70, 70);
  static const Color logoBad = Color.fromARGB(255, 244, 55, 22);
  static const Color logoRight = Color.fromARGB(255, 76, 201, 170);
  static const Color degradedStart = Color.fromRGBO(237, 128, 26, 1);
  static const Color blueDark = Color.fromRGBO(38, 52, 113, 1);
  static const Color modalBarrier = Color.fromARGB(33, 87, 85, 85);
  static const Color contentNotification = Color.fromRGBO(247, 248, 253, 1);
  static const Color redLoading = Color.fromRGBO(230, 0, 0, 0.8);
  static const Color black = Color.fromRGBO(27, 21, 61, 1.0);

  static const Color grayDark = Color.fromRGBO(47, 46, 65, 1);
  static const Color light = Color.fromRGBO(239, 239, 239, 1.0);
  static const Color green = Color.fromRGBO(76, 175, 80, 1);
  static const Color yellow = Color.fromRGBO(255, 235, 59, 1);
  //-----------
  static const Color purpleCustom = Color.fromRGBO(53, 43, 200, 1);
  static const Color blueCustom = Color.fromRGBO(47, 119, 234, 1);

  static const Color borderForm = Color.fromRGBO(230, 230, 241, 1);

  static const Color green02 = Color.fromRGBO(0, 166, 90, 1);
  static const Color green03 = Color.fromRGBO(0, 166, 90, 0.65);
  static const Color orangeCustom = Color.fromRGBO(221, 75, 57, 1);
  static const Color purpleCustomLoading = Color.fromRGBO(53, 43, 200, 0.8);
  static const Color blueCustomLoading = Color.fromRGBO(47, 119, 234, 0.8);
  static const Color giftColor = Color.fromRGBO(223, 240, 216, 1.0);
  static const Color noConectionColor = Color.fromRGBO(246, 185, 278, 1.0);

  static const Color graySchedule = Color.fromARGB(255, 243, 243, 243);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primaryConst, primaryConst],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  //---
  static const LinearGradient primaryGradientLoading = LinearGradient(
    colors: [redLoading, redLoading],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient greenGradientLoading = LinearGradient(
    colors: [green03, green03],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

}
