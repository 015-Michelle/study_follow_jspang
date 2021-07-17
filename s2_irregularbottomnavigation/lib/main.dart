import 'package:flutter/material.dart';
import 'bottomappbardemo.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IrregularBottomNavigation',
      //自定义主题样本
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: BottomAppBarDemo(),
    );
  }
}