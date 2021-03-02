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

    int number = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
            children:[
              IconButton(
                icon: Image.asset('images/ATM.png'),
                iconSize: 180,
                onPressed: () {
                  print('You pressed on left picture');
                },
              ),
              IconButton(
                icon: Image.asset('images/ATM.png'),
                iconSize: 180,
                onPressed: () {
                  print('You pressed on right picture');
                },
              ),
              Text("")
            ]
        ),
      ),
    );
  }
}
