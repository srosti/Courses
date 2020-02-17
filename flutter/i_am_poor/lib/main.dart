import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: Scaffold(
              backgroundColor: Colors.brown,
              appBar: AppBar(
                  title: Center(child: Text('I Am Not Poor')),
                  backgroundColor: Colors.brown[100]
              ),
              body: Center(
                  child: Image(
                      image: AssetImage('images/boise.jpg')
                  )
              )
          )
      )

  );
}

