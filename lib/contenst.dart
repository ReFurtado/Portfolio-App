import 'package:flutter/material.dart';

//Tela inicial
const kTitleButton = TextStyle(
  fontSize: 24,
  color: Color(0xFF8D8E98),
);

const kResultButton1 = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w900,
);

const kNumberButton = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const kIconButton =
    BoxConstraints.tightFor(width: 40, height: 40);

//Tela de resultados
const kResultsTitle = TextStyle(
  fontSize: 30,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);

const kResultsText = TextStyle(
  color: Color(0xFF24D867),
  fontSize: 22,
  fontWeight: FontWeight.bold,
);

const kResultsImc = TextStyle( //kBmiTextStyle
  fontSize: 100,
  fontWeight: FontWeight.bold,
);

const kResultsInfo = TextStyle(
  fontSize: 22,
);


//Cores
const Color kActiveCardColor = Color(0xFF003366);
const Color kInactiveCardColor = Color(0xFF007AFF);
const Color kBottomContainerColor = Colors.deepOrange;
const Color kRoundIconButtonColor = Color(0xFF4C4F5E);

//Espaços
const double kCardMargin = 12;
const double kCardBorderRadius = 12;
const double iconSize = 50;
const double kIconSpacing = 20;
const double kBottomHeight = 70;
const double kSliderMin = 100;
const double kSliderMax = 250; 