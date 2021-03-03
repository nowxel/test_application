import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
            children:[
              IconButton(
                icon: Image.asset('images/Left.jpg'),
                iconSize: 180,
                onPressed: () {
                  print('You pressed on left picture');
                },
              ),
              IconButton(
                icon: Image.asset('images/Right.jpg'),
                iconSize: 180,
                onPressed: () {
                  Text("Left");
                  print('You pressed on right picture');
                },
              ),
            ]
        ),
      ),
    );
  }
}