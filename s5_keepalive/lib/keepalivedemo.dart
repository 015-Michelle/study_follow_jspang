import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with AutomaticKeepAliveClientMixin{
  int _counter=0;//声明一个计数器
  @override 
  bool get wantKeepAlive=>true;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text('点下面的加看看'),
             Text('$_counter',style: Theme.of(context).textTheme.display1,),
           ],
         ),
       ),
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add),
         tooltip: 'add',
         backgroundColor: Colors.blue,
         onPressed: _incrementCounter,
       ),
    );
  }
}