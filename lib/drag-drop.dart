import 'dart:math';

import 'package:flutter/material.dart';
import 'main.dart';

class Dragdrop extends StatefulWidget {
  @override
  _DragdropState createState() => _DragdropState();
}

class _DragdropState extends State<Dragdrop> {
  bool scdropx;
  bool scdropy;
  bool scdropz;
  bool scdropk;
  bool completedx;
  bool completedy;
  bool completedz;
  bool completedk;

  final Map kv = {
    "assets/lion.jfif": "Lion",
    "assets/elephant.jfif": "Elephant",
    "assets/fox.jfif": "Fox",
    "assets/dog.jfif": "Dog",
    "assets/cat.jfif": "Cat",
    "assets/bear.jfif": "Bear",
    "assets/bird.jfif": "Bird",
    "assets/chicken.jfif": "Chicken",
    "assets/cow.jfif": "Cow",
    "assets/deer.jfif": "Deer",
    "assets/donkey.jfif": "Donkey",
    "assets/duck.jfif": "Duck",
    "assets/eagle.jfif": "Eagle",
    "assets/fish.jfif": "Fish",
    "assets/hedgehog.jfif": "Hedgehog",
    "assets/horse.jfif": "Horse",
    "assets/mouse.jfif": "Mouse",
    "assets/owl.jfif": "Owl",
    "assets/rabbit.jfif": "Rabbit",
    "assets/sheep.jfif": "Sheep",
    "assets/snake.jfif": "Snake",
    "assets/squirrel.jfif": "Squirrel",
    "assets/tiger.jfif": "Tiger",
    "assets/turtle.jfif": "Turtle",
    "assets/wolf.jfif": "Wolf",
  };
  int x = Random().nextInt(7) + 18;
  int y = Random().nextInt(6) + 12;
  int z = Random().nextInt(6) + 6;
  int k = Random().nextInt(5) + 1;
  int sflNum = Random().nextInt(12) + 1;
  String randomAnimal(int sayi) {
    if (sayi == 1) {
      return "assets/lion.jfif";
    }
    if (sayi == 2) {
      return "assets/elephant.jfif";
    }
    if (sayi == 3) {
      return "assets/fox.jfif";
    }
    if (sayi == 4) {
      return "assets/dog.jfif";
    }
    if (sayi == 5) {
      return "assets/cat.jfif";
    }
    if (sayi == 6) {
      return "assets/bear.jfif";
    }
    if (sayi == 7) {
      return "assets/bird.jfif";
    }
    if (sayi == 8) {
      return "assets/chicken.jfif";
    }
    if (sayi == 9) {
      return "assets/cow.jfif";
    }
    if (sayi == 10) {
      return "assets/deer.jfif";
    }
    if (sayi == 11) {
      return "assets/donkey.jfif";
    }
    if (sayi == 12) {
      return "assets/duck.jfif";
    }
    if (sayi == 13) {
      return "assets/eagle.jfif";
    }
    if (sayi == 14) {
      return "assets/fish.jfif";
    }
    if (sayi == 15) {
      return "assets/hedgehog.jfif";
    }
    if (sayi == 16) {
      return "assets/horse.jfif";
    }
    if (sayi == 17) {
      return "assets/mouse.jfif";
    }
    if (sayi == 18) {
      return "assets/owl.jfif";
    }
    if (sayi == 19) {
      return "assets/rabbit.jfif";
    }
    if (sayi == 20) {
      return "assets/sheep.jfif";
    }
    if (sayi == 21) {
      return "assets/snake.jfif";
    }
    if (sayi == 22) {
      return "assets/squirrel.jfif";
    }
    if (sayi == 23) {
      return "assets/tiger.jfif";
    }
    if (sayi == 24) {
      return "assets/turtle.jfif";
    }
    if (sayi == 25) {
      return "assets/wolf.jfif";
    }
  }

  Widget Dragchild(bool acptd, int sayimiz){
    if(acptd == true){
      return Card(
          child: Image.asset(
            "assets/correct.png",
            cacheHeight: 60,
            cacheWidth: 60,
          ),
        );
    }
    else{
      return
        Container(
            color: Colors.blue,
            padding: EdgeInsets.all(20),
            child: Text(
              kv[randomAnimal(sayimiz)],
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 1,
              ),
            ),
        );
    }
  }

  Widget dTargetX(){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: DragTarget(
        builder: (BuildContext context, accepted, rejected){
          if(scdropx==true){
            return Card(
              child: Image.asset(
                "assets/correct.png",
                cacheHeight: 120,
                cacheWidth: 140,
              ),
            );
          }
          return Card(
            child: Image.asset(
              randomAnimal(x),
              cacheHeight: 120,
              cacheWidth: 140,
            ),
          );
        },
        onWillAccept: (data) => data == kv[randomAnimal(x)],
        onAccept: (data) {
          setState(() {
            scdropx = true;
          });
        },
      ),
    );
  }
  Widget dTargetY(){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: DragTarget(
        builder: (BuildContext context, accepted, rejected){
          if(scdropy==true){
            return Card(
              child: Image.asset(
                "assets/correct.png",
                cacheHeight: 120,
                cacheWidth: 140,
              ),
            );
          }
          else {return Card(
            child: Image.asset(
              randomAnimal(y),
              cacheHeight: 120,
              cacheWidth: 140,
            ),
          );}
        },
        onWillAccept: (data) => data == kv[randomAnimal(y)],
        onAccept: (data) {
          setState(() {
            scdropy = true;
          });
        },
      ),
    );
  }
  Widget dTargetZ(){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: DragTarget(
        builder: (BuildContext context, accepted, rejected){
          if(scdropz==true){
            return Card(
              child: Image.asset(
                "assets/correct.png",
                cacheHeight: 120,
                cacheWidth: 140,
              ),
            );
          }
          else {return Card(
            child: Image.asset(
              randomAnimal(z),
              cacheHeight: 120,
              cacheWidth: 140,
            ),
          );}
        },
        onWillAccept: (data) => data == kv[randomAnimal(z)],
        onAccept: (data) {
          setState(() {
            scdropz = true;
          });
        },
      ),
    );
  }
  Widget dTargetK(){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: DragTarget(
        builder: (BuildContext context, accepted, rejected){
          if(scdropk==true){
            return Card(
              child: Image.asset(
                "assets/correct.png",
                cacheHeight: 120,
                cacheWidth: 140,
              ),
            );
          }
          else {return Card(
            child: Image.asset(
              randomAnimal(k),
              cacheHeight: 120,
              cacheWidth: 140,
            ),
          );}
        },
        onWillAccept: (data) => data == kv[randomAnimal(k)],
        onAccept: (data) {
          setState(() {
            scdropk = true;
          });
        },
      ),
    );
  }




  Widget exo(){
    if(sflNum<5){
      return dTargetK();
    }
    else if(sflNum<9){
      return dTargetZ();
    }
    else if(sflNum<11){
      return dTargetX();
    }
    else{
      return dTargetY();
    }
  }
  Widget ext(){
    if(sflNum==4 || sflNum == 8 || sflNum == 11 || sflNum == 12){
      return dTargetX();
    }
    else if(sflNum==3 || sflNum == 7){
      return dTargetY();
    }
    else if(sflNum==1 || sflNum == 2){
      return dTargetZ();
    }
    else{
      return dTargetK();
    }
  }
  Widget exr(){
    if(sflNum==2 || sflNum == 3 || sflNum == 6 || sflNum == 7){
      return dTargetX();
    }
    else if(sflNum==12){
      return dTargetK();
    }
    else if(sflNum==10 || sflNum == 11){
      return dTargetZ();
    }
    else{
      return dTargetY();
    }
  }
  Widget exf(){
    if(sflNum==3 || sflNum == 4 || sflNum == 9 || sflNum == 12){
      return dTargetZ();
    }
    else if(sflNum==1 || sflNum == 5){
      return dTargetX();
    }
    else if(sflNum==2 || sflNum == 4 || sflNum==6){
      return dTargetY();
    }
    else{
      return dTargetK();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage()),
            (route) => false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Drag and Drop!"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 5),
                        child: Draggable(
                          onDragCompleted: (){
                            setState(() {
                              completedx = true;
                            });
                          },
                          child: Dragchild(completedx, x),
                          childWhenDragging: Container(
                            color: Colors.green,
                          ),
                          data: kv[randomAnimal(x)],
                          feedback: Card(
                            color: Colors.blue,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                kv[randomAnimal(x)],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 5),
                        child: Draggable(
                          onDragCompleted: (){
                            setState(() {
                              completedy = true;
                            });
                          },
                          child: Dragchild(completedy, y),
                          childWhenDragging: Container(
                            color: Colors.green,
                          ),
                          data: kv[randomAnimal(y)],
                          feedback: Card(
                            color: Colors.blue,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                kv[randomAnimal(y)],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 5),
                        child: Draggable(
                          onDragCompleted: (){
                            setState(() {
                              completedz = true;
                            });
                          },
                          child: Dragchild(completedz, z),
                          childWhenDragging: Container(
                            color: Colors.green,
                          ),
                          data: kv[randomAnimal(z)],
                          feedback: Card(
                            color: Colors.blue,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                kv[randomAnimal(z)],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 5),
                        child: Draggable(
                          onDragCompleted: (){
                            setState(() {
                              completedk = true;
                            });
                          },
                          child: Dragchild(completedk, k),
                          childWhenDragging: Container(
                            color: Colors.green,
                          ),
                          data: kv[randomAnimal(k)],
                          feedback: Card(
                            color: Colors.blue,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                kv[randomAnimal(k)],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      exo(),
                      ext(),
                      exr(),
                      exf()
                    ],
                  )
                ],
              ),
              FloatingActionButton(
                  child: Icon(Icons.refresh),
                  onPressed: () {
                    setState(() {
                       x = Random().nextInt(7) + 18;
                       y = Random().nextInt(6) + 12;
                       z = Random().nextInt(6) + 6;
                       k = Random().nextInt(5) + 1;
                       scdropk = false;
                       scdropz = false;
                       scdropy = false;
                       scdropx = false;
                        completedx = false;
                        completedy = false;
                        completedz = false;
                        completedk = false;
                       sflNum = Random().nextInt(12) + 1;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
