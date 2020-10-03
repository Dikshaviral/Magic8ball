import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue[200],
          appBar: AppBar(
            title: Text('Magic8Ball'),
            backgroundColor: Colors.blue[900],
          ),
          body: Ballpage(),
        ),
      ),
    );

class Ballpage extends StatefulWidget {
  @override
  _BallpageState createState() => _BallpageState();
}

class _BallpageState extends State<Ballpage> {
  @override
  // ignore: override_on_non_overriding_member
  int ballno = 1;
  void changeBall() {
    setState(() {
      ballno = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
            child: Image.asset('images/ball$ballno.png'),
            onPressed: () {
              changeBall();
            }));
  }
}
