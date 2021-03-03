import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int i;

  @override
  void initState() {
    super.initState();
    i = 0;
  }

  _changeState(int s) {
    setState(() {
      i = s;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            children:[
              if (i == 0) Text(''),
              if (i == 1) Text('Left'),
              if (i == 2) Text('Right'),
              Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/Left.jpg'),
                    iconSize: 180,
                    onPressed: () => _changeState(1),
                  ),
                  IconButton(
                    icon: Image.asset('images/Right.jpg'),
                    iconSize: 180,
                    onPressed: () => _changeState(2),
                  ),
                ],
              ),

            ]
        ),
      ),
    );
  }
}