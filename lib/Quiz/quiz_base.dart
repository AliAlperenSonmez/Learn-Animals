import '../main.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';
import 'finishQuiz.dart';
import 'quizPackage.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  void playSound(){
    final player = AudioCache();
    player.play("$control.wav",);
  }
  String _answer;
  Color color1 = Colors.blue;
  Color color2 = Colors.blue;
  Color color3 = Colors.blue;
  Color color4 = Colors.blue;
  int counter = 1;
  int x = Random().nextInt(25) + 1;
  int x2 = Random().nextInt(4) + 1;
  int x3 = Random().nextInt(8) + 16;
  int x4 = Random().nextInt(8) + 8;
  int x5 = Random().nextInt(8);
  String y = "";
  String control;
  String z;
  String k;
  String l;
  String m;
  List animalList = [
    "Lion",
    "Elephant",
    "Fox",
    "Dog",
    "Cat",
    "Bear",
    "Bird",
    "Chicken",
    "Cow",
    "Deer",
    "Donkey",
    "Duck",
    "Eagle",
    "Fish",
    "Hedgehog",
    "Horse",
    "Mouse",
    "Owl",
    "Rabbit",
    "Sheep",
    "Snake",
    "Squirrel",
    "Tiger",
    "Turtle",
    "Wolf"
  ];
  bool bit = false;
  String whichAnimal() {
    if (x == 1) {
      animalList = [
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];
      y = "assets/lion.jfif";
      control = "Lion";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 2) {
      animalList = [
        "Lion",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/elephant.jfif";
      control = "Elephant";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 3) {
      animalList = [
        "Lion",
        "Elephant",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/fox.jfif";
      control = "Fox";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 4) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/dog.jfif";
      control = "Dog";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 5) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/cat.jfif";
      control = "Cat";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 6) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/bear.jfif";
      control = "Bear";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 7) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/bird.jfif";
      control = "Bird";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 8) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/chicken.jfif";
      control = "Chicken";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 9) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/cow.jfif";
      control = "Cow";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 10) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/deer.jfif";
      control = "Deer";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 11) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/donkey.jfif";
      control = "Donkey";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 12) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];
      y = "assets/duck.jfif";
      control = "Duck";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 13) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];
      y = "assets/eagle.jfif";
      control = "Eagle";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 14) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/fish.jfif";
      control = "Fish";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 15) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/hedgehog.jfif";
      control = "Hedgehog";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 16) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/horse.jfif";
      control = "Horse";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 17) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/mouse.jfif";
      control = "Mouse";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 18) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/owl.jfif";
      control = "Owl";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 19) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/rabbit.jfif";
      control = "Rabbit";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 20) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/sheep.jfif";
      control = "Sheep";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 21) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Squirrel",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/snake.jfif";
      control = "Snake";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 22) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Tiger",
        "Turtle",
        "Wolf"
      ];

      y = "assets/squirrel.jfif";
      control = "Squirrel";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 23) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Turtle",
        "Wolf"
      ];

      y = "assets/tiger.jfif";
      control = "Tiger";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 24) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Wolf"
      ];

      y = "assets/turtle.jfif";
      control = "Turtle";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    if (x == 25) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Bird",
        "Chicken",
        "Cow",
        "Deer",
        "Donkey",
        "Duck",
        "Eagle",
        "Fish",
        "Hedgehog",
        "Horse",
        "Mouse",
        "Owl",
        "Rabbit",
        "Sheep",
        "Snake",
        "Squirrel",
        "Tiger",
        "Turtle"
      ];

      y = "assets/wolf.jfif";
      control = "Wolf";
      if (x2 == 4) {
        z = control;
        k = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 3) {
        k = control;
        z = animalList[x3];
        l = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 2) {
        l = control;
        k = animalList[x3];
        z = animalList[x4];
        m = animalList[x5];
      }
      if (x2 == 1) {
        m = control;
        k = animalList[x3];
        l = animalList[x4];
        z = animalList[x5];
      }
    }
    return y;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => QuizPackage()), (route) => true);
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              whichAnimal(),
              cacheHeight: 250,
              cacheWidth: 400,
              width: 600,
              height: 270,
            ),
            RaisedButton(
                child: Icon(Icons.volume_up),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)
                ),
                color: Colors.blue,
                onPressed: (){
                  playSound();
                }),
            Row(
              children: <Widget>[
                Expanded(child: choice1(z)),
                Expanded(child: choice2(k)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(child: choice3(l)),
                Expanded(child: choice4(m)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.home),
                      onPressed: () {
                        setState(() {
                          Navigator.pushAndRemoveUntil(context,
                              MaterialPageRoute(builder: (context) => MyHomePage()), (route) => false);
                        });
                      }),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  color: Colors.blue,
                  child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        if (control == _answer) {
                          setState(() {
                            x3 = Random().nextInt(8)+16;
                            x4 = Random().nextInt(8)+8;
                            x5 = Random().nextInt(8);
                            color1 = Colors.blue;
                            color2 = Colors.blue;
                            color3 = Colors.blue;
                            color4 = Colors.blue;
                            bit = false;
                            counter = counter + 1;
                            if (counter == 26) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Finish()));
                            }
                            animalList..shuffle();
                            if (x == 25) {
                              x = 1;
                              x2 = Random().nextInt(4) + 1;
                            } else {
                              x = x + 1;
                              x2 = Random().nextInt(4) + 1;
                            }
                            if (x == 1) {
                              y = "assets/lion.jfif";
                            }
                            if (x == 2) {
                              y = "assets/elephant.jfif";
                            }
                            if (x == 3) {
                              y = "assets/fox.jfif";
                            }
                            if (x == 4) {
                              y = "assets/dog.jfif";
                            }
                            if (x == 5) {
                              y = "assets/cat.jfif";
                            }
                            if (x == 6) {
                              y = "assets/bear.jfif";
                            }
                            if (x == 7) {
                              y = "assets/bird.jfif";
                            }
                            if (x == 8) {
                              y = "assets/chicken.jfif";
                            }
                            if (x == 9) {
                              y = "assets/cow.jfif";
                            }
                            if (x == 10) {
                              y = "assets/deer.jfif";
                            }
                            if (x == 11) {
                              y = "assets/donkey.jfif";
                            }
                            if (x == 12) {
                              y = "assets/duck.jfif";
                            }
                            if (x == 13) {
                              y = "assets/eagle.jfif";
                            }
                            if (x == 14) {
                              y = "assets/fish.jfif";
                            }
                            if (x == 15) {
                              y = "assets/hedgehog.jfif";
                            }
                            if (x == 16) {
                              y = "assets/horse.jfif";
                            }
                            if (x == 17) {
                              y = "assets/mouse.jfif";
                            }
                            if (x == 18) {
                              y = "assets/owl.jfif";
                            }
                            if (x == 19) {
                              y = "assets/rabbit.jfif";
                            }
                            if (x == 20) {
                              y = "assets/sheep.jfif";
                            }
                            if (x == 21) {
                              y = "assets/snake.jfif";
                            }
                            if (x == 22) {
                              y = "assets/squirrel.jfif";
                            }
                            if (x == 23) {
                              y = "assets/tiger.jfif";
                            }
                            if (x == 24) {
                              y = "assets/turtle.jfif";
                            }
                            if (x == 25) {
                              y = "assets/wolf.jfif";
                            }
                          });
                        }
                      }),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }

  Widget choice1(
    String answer,
  ) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FlatButton(
        color: color1,
        padding: EdgeInsets.all(30),
        onPressed: () {
          if (bit == false) {
            _answer = answer;
            if (control == answer) {
              setState(() {
                color1 = Colors.green;
                bit = true;
              });
            }
            else {
              setState(() {
                color1 = Colors.red;
              });
            }
          }
        },
        child: Text(
          answer,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
  Widget choice2(
      String answer,
      ) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FlatButton(
        color: color2,
        padding: EdgeInsets.all(30),
        onPressed: () {
          if (bit == false) {
            _answer = answer;
            if (control == answer) {
              setState(() {
                color2 = Colors.green;
                bit = true;
              });
            }
            else {
              setState(() {
                color2 = Colors.red;
              });
            }
          }
        },
        child: Text(
          answer,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
  Widget choice3(
      String answer,
      ) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FlatButton(
        color: color3,
        padding: EdgeInsets.all(30),
        onPressed: () {
          if (bit == false) {
            _answer = answer;
            if (control == answer) {
              setState(() {
                color3 = Colors.green;
                bit = true;
              });
            }
            else {
              setState(() {
                color3 = Colors.red;
              });
            }
          }
        },
        child: Text(
          answer,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
  Widget choice4(
      String answer,
      ) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FlatButton(
        color: color4,
        padding: EdgeInsets.all(30),
        onPressed: () {
          if (bit == false) {
            _answer = answer;
            if (control == answer) {
              setState(() {
                color4 = Colors.green;
                bit = true;
              });
            }
            else {
              setState(() {
                color4 = Colors.red;
              });
            }
          }
        },
        child: Text(
          answer,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
