import 'package:flutter/material.dart';
import 'package:learn_animals/pages/dog.dart';
import 'package:learn_animals/pages/fox.dart';
import 'package:learn_animals/pages/horse.dart';
import 'package:learn_animals/pages/lion.dart';
import 'package:learn_animals/pages/wolf.dart';

import '../main.dart';


class Packages extends StatefulWidget {
  @override
  _PackagesState createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
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
                      hero(Dog(),"Dog","assets/dog.jfif"),
                      SizedBox(width: 10,),
                      hero(Horse(),"Horse", "assets/horse.jfif"),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      hero(Fox(), "Fox", "assets/fox.jfif"),
                      SizedBox(width: 10,),
                      hero(Lion(), "Lion", "assets/lion.jfif"),
                    ],
                  ),
                  SizedBox(height: 40,),
                  hero(Wolf(), "Wolf", "assets/wolf.jfif"),
                ],
              ),
            )),
      ),
    );
  }
  Widget hero(Widget x, String y, String z){
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
      child: Hero(tag: y, child: Image.asset(z,cacheWidth: 170,cacheHeight: 130,)),
    );
  }
}
