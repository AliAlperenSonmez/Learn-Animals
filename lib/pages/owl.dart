import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:learn_animals/packages/packages.dart';
import '../main.dart';
import 'tiger.dart';

class Owl extends StatefulWidget {
  @override
  _OwlState createState() => _OwlState();
}

class _OwlState extends State<Owl> {
  void playSound(){
    final player = AudioCache();
    player.play("Owl.wav");
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => Packages()), (route) => true);
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Animals"),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/owl.jfif",
                cacheHeight: 250,
                cacheWidth: 410,
                width: 600,
                height: 256,
              ),
              SizedBox(height: 20,),
              Card(
                color: Colors.blue,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Owl",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
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
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  walkPages(Icons.arrow_back, Tiger()),
                  SizedBox(width: 30,),
                  walkPages2(Icons.home, MyHomePage()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Container walkPages(IconData x, Widget y){
    return Container(
      color: Colors.blue,
      child: IconButton(
          color: Colors.white,
          icon: Icon(x),
          onPressed: () {
            setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => y,
                    ));
            });
          }),
    );
  }
  Container walkPages2(IconData x, Widget y){
    return Container(
      color: Colors.blue,
      child: IconButton(
          color: Colors.white,
          icon: Icon(x),
          onPressed: () {
            setState(() {
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()), (route) => false);
            });
          }),
    );}
}
