import 'package:flutter/material.dart';
import 'wrapdemo.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wrap Demo',
      theme: ThemeData.light(),
      home: WrapDemo(),
    );
  }
}