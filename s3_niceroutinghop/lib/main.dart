import 'package:flutter/material.dart';
import 'pages.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'niceroutinghop',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: FirstPage(),
    );
  }
}