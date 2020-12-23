import 'package:flutter/material.dart';
import 'dart:math';

// Stateless widget
class BallPage extends StatelessWidget {
  const BallPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Magic 8 Ball'),
      ),
      body: Ball(),
   );
  }
}

// State widget
class Ball extends StatefulWidget {
  const Ball({ Key key }) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
            print('I got clicked next image #$ballNumber');
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );
