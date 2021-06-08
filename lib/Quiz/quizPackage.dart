import 'package:flutter/material.dart';
import '../main.dart';
import 'DogQuiz.dart';
import 'FoxQuiz.dart';
import 'HorseQuiz.dart';
import 'LionQuiz.dart';
import 'WolfQuiz.dart';
import 'quiz_base.dart';

class QuizPackage extends StatefulWidget {
  @override
  _QuizPackageState createState() => _QuizPackageState();
}

class _QuizPackageState extends State<QuizPackage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => MyHomePage()), (route) => false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Choose a Package"),
        ),
        body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      flatBut(DogQuiz(), "assets/dog.jfif"),
                      SizedBox(width: 10,),
                      flatBut(HorseQuiz(), "assets/horse.jfif"),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      flatBut(FoxQuiz(), "assets/fox.jfif"),
                      SizedBox(width: 10,),
                      flatBut(LionQuiz(), "assets/lion.jfif"),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      flatBut(WolfQuiz(), "assets/wolf.jfif"),
                      SizedBox(width: 10,),
          FlatButton(
            hoverColor: Colors.black,
            focusColor: Colors.black,
            color: Colors.black,
            padding: EdgeInsets.all(5),
            onPressed: () {
              setState(() {
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Quiz(),
                      ));
                }
              });
            },
            child: Image.asset("assets/allAnimals.jfif",cacheWidth: 170,cacheHeight: 130,),
          )
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
  Widget flatBut(Widget x, String y){
    return FlatButton(
      hoverColor: Colors.black,
      focusColor: Colors.black,
      color: Colors.black,
      padding: EdgeInsets.all(5),
      onPressed: () {
        setState(() {
          {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => x,
                ));
          }
        });
      },
      child: Image.asset(y,cacheWidth: 170,cacheHeight: 130,),
    );
  }
}