import '../main.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';
import 'finishQuiz.dart';
import 'quizPackage.dart';

class WolfQuiz extends StatefulWidget {
  @override
  _WolfQuizState createState() => _WolfQuizState();
}

class _WolfQuizState extends State<WolfQuiz> {
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
  int x = Random().nextInt(5) + 1;
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
        "Dog"
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
    if (x == 2) {
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
        "Cat",
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
    if (x == 3) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Bear",
        "Chicken",
        "Cow",
        "Bird",
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
    if (x == 4) {
      animalList = [
        "Lion",
        "Elephant",
        "Fox",
        "Dog",
        "Cat",
        "Fish",
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
    if (x == 5) {
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
        "Rabbit",
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
                              {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyHomePage(),
                                    ));
                              }
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
                                if (counter == 6) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Finish()));
                                }
                                animalList..shuffle();
                                if (x == 5) {
                                  x = 1;
                                  x2 = Random().nextInt(4) + 1;
                                } else {
                                  x = x + 1;
                                  x2 = Random().nextInt(4) + 1;
                                }
                                if (x == 1) {
                                  y = "assets/wolf.jfif";
                                }
                                if (x == 2) {
                                  y = "assets/eagle.jfif";
                                }
                                if (x == 3) {
                                  y = "assets/deer.jfif";
                                }
                                if (x == 4) {
                                  y = "assets/beer.jfif";
                                }
                                if (x == 5) {
                                  y = "assets/hedgehog.jfif";
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
