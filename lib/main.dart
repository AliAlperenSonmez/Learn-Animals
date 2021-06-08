import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Quiz/quizPackage.dart';
import 'drag-drop.dart';
import 'packages/packages.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Learn Animals"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => MyHomePage()), (route) => false);
        return Future.value(false);
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/animals.jfif",
                  cacheHeight: 300,
                  cacheWidth: 411,
                  width: 600,
                  height: 300,
                ),
                SizedBox(height: 55,),
                menuButton("Start Learning", Packages()),
                menuButton("Quiz Time!", QuizPackage()),
                menuButton("Drag and Drop!", Dragdrop()),
    RaisedButton(
    color: Colors.blue,
    child: Text("Privacy Policy", style: TextStyle(color: Colors.white),),
    onPressed: () async{
    const url = "https://drive.google.com/file/d/1cUhDX0oa9LHKo-hLWxXUjVKROeuREzdF/view?usp=sharing";
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw "Could not launch $url";
    }
    })
              ],
            ),
          ),
        ),
      ),
    );
  }
  RaisedButton menuButton(String x, Widget y){
    return RaisedButton(
        color: Colors.blue,
        child: Text(x, style: TextStyle(color: Colors.white),),
        onPressed: () {
          setState(() {
            {Navigator.push(context, MaterialPageRoute(builder: (
                context) => y,));}
          });
        });
  }
}
