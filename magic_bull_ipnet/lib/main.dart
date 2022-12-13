import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numBall = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0XFF4ca2f5),
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Magic Bull IPNET',
                style: TextStyle(fontFamily: 'Mono', fontSize: 15),
              ),
            ),
            backgroundColor: const Color(0XFF3158ab),
          ),
          body: Center(
            child: TextButton(
              onPressed: () {
                setState(() {
                  numBall = Random().nextInt(5) + 1;
                });
              },
              child: Image(image: AssetImage('images/ball$numBall.png')),
            ),
          )),
    );
  }
}
