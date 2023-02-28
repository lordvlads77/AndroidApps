import 'package:flutter/material.dart';
import 'home.dart';
import 'contador.dart';

void main(){
  runApp(Principal());
}

class Principal  extends StatelessWidget {
  const Principal ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primera App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Contador(),
    );
  }
}
