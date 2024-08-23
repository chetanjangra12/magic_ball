import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
return runApp
(
MaterialApp(
home: Scaffold(
backgroundColor: Colors.blueGrey,
appBar: AppBar(
title: Text('Ask Me Anything'),
backgroundColor: Colors.white38,
),
body: magicball(),
),
),
);
}
class magicball extends StatefulWidget {
  const magicball({super.key});

  @override
  State<magicball> createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  int ballno = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  ballno = Random().nextInt(5)+1;
                });
              },
              child: Image.asset('images/ball$ballno.png'),
          ),
          ),
        ],
      ),
    );
  }
}

