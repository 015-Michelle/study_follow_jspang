import 'package:flutter/material.dart';
import 'frostedglass.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FrostedGlass',
      theme: ThemeData(
        primaryColor: Colors.green
      ),
      home: FrostedGlass(),
    );
  }
}