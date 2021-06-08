import 'package:flutter/material.dart';
import '../main.dart';

class Finish extends StatefulWidget {
  @override
  _FinishState createState() => _FinishState();
}

class _FinishState extends State<Finish>{
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => MyHomePage()), (route) => false);
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Card(
                    color: Colors.lightGreen,
                    child: Text(
                      "WELL DONE!",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 50,
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/wellDone.jfif",
                    cacheHeight: 300,
                    cacheWidth: 300,
                  ),
                  FlatButton(
                    color: Colors.blueGrey,
                      onPressed: (){
                    setState(() {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context) => MyHomePage()), (route) => false);

                    });
                  },
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ))
                  ],
              ),
            )
        ),
      ),
    );
  }
}
