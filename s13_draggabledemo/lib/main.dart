import 'package:flutter/material.dart';
import 'draggable_demo.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Draggable Demo',
      home: DraggableDemo(),
    );
  }
}