import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 100.0,
//                height: 100.0,
                color: Colors.redAccent,
                child: Text('Container 1')
              ),
              Container(
                  child: Column(
//                      crossAxisAlignment: CrossAxisAlignment.stretch,
//                      mainAxisAlignment: MainAxisAlignment.center,


//                    alignment: Alignment(-.5, 0),
//                      alignment: FractionalOffset(0.9, 0.6),
                    children: <Widget>[
                      Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.yellow,
                          child: Text('Container 3')
                      ),
                      Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.cyan,
                          child: Text('Container 4')
                      ),

                    ]
                ),
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                  width: 100.0,
                  color: Colors.blue,
                  child: Text('Container 2')
              ),
            ],
          ),
        ),
      ),
    );
  }
}

