import 'package:flutter/material.dart';

import 'Second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HOMEPAGE());
  }
}

class HOMEPAGE extends StatelessWidget {
  const HOMEPAGE({super.key});

  get Navigatior => Second();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 50,
          child: GestureDetector(
            child: Hero(
              tag: "add",
              child: Icon(
                Icons.add_a_photo,
                size: 150,
              ),
            ),
            onTap: (){
              Navigatior.push(
                  context, MaterialPageRoute(builder: (context) => Second()));
            },
          ),
        ),
      ),
    );
  }
}



