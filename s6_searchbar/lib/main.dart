import 'package:flutter/material.dart';
import 'searchbardemo.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SearchBar Demo',
      theme: ThemeData.light(),
      home: SearchBarDemo(),
    );
  }
}